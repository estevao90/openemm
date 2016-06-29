#!/usr/bin/env python
# -*- coding: utf-8  -*-

import win32serviceutil
import win32service
import win32event
import servicemanager
import time
import logging
import	sys, os, time, types
import winerror
#
#
#
#

# 
# Configuração do LOG
#
#
logging.basicConfig(
    filename = 'c:\\OpenEMM\\logs\\openEMMService.log',
    level = logging.INFO, 
    format = '[OpenEMM] %(asctime)s %(levelname)-7.7s %(message)s',
	datefmt = "%d/%m/%Y %H:%M:%S"
)

listaErros = {
			'semPasta': (1, 'Pasta do OpenEMM nao encontrada. Caminho esperado: "%s".'),
			'entradaInvalida': (2, 'Encontrada possivel entrada invalida em %s: %s.'),
			'caminhoInvalido': (3, '<MensagemPersonalizada>'),
			'semBD': (4, 'Modulo do banco de dados nao encontrado.'),
			'semJDK': (5, 'JDK nao encontrado.'),
			'semTomcat': (6, 'Servidor Tomcat nao encontrado.'),
			'erroConfBD': (7, 'Erro ao configurar conexao com o banco de dados.'),
			'erroConexaoBD': (8, 'Nao foi possivel realizar conexao com o banco de dados.'),
			'semCodAgn': (9, 'Codigo do OpenEMM nao encontrado.'),
			'erroIniUpdate': (10, 'Erro ao iniciar script de atualizacao.'),
			'erroIniPickdist': (11, 'Erro ao executar o script erroIniPickdist.'),
			'erroIniBavupdate': (12, 'Erro ao executar o script bav-update.'),
			'erroIniSemu': (13, 'Erro ao executar o script semu.'),
			'erroIniTomcat': (14, 'Erro ao iniciar o Tomcat.')
}


def addpath (path):
	path = str (path)
	parts = os.environ['PATH'].split (os.path.pathsep)
	if not path in parts:
		parts.insert (0, path)
		os.environ['PATH'] = os.path.pathsep.join (parts)

def checkprop (srv, homedir):
	replaces = [
		'jdbc.url=jdbc:mysql://localhost/openemm?useUnicode=yes&characterEncoding=UTF-8&useOldAliasMetadataBehavior=true',
		'system.script_logdir=var\\log',
		'system.upload_archive=var\\tmp',
		'system.attachment_archive=var\\tmp',
		'system.logdir=var\\log',
		'velocity.logdir=var\\log',
		'system.upload=var\\tmp',
		'log4j.appender.LOGFILE.File=var\\log\\emm_axis.log',
		'log4j.appender.STRUTSLOG.File=var\\log\\emm_struts.log',
		'mailgun.ini.maildir=var\\spool\\ADMIN',
		'mailgun.ini.metadir=var\\spool\\META',
		'mailgun.ini.xmlback=bin\\xmlback.exe',
		'mailgun.ini.account_logfile=var\\spool\\log\\account.log',
		'mailgun.ini.bounce_logfile=var\\spool\\log\\extbounce.log',
		'plugins.home=plugins'
	]
	ignores = [
		'system.url',
		'system.updateserver',
		'ecs.server.url'
	]
	rplc = {}
	for replace in replaces:
		parts = replace.split ('=', 1)
		rplc[parts[0].strip ()] = replace.replace ('\\', '\\\\') + '\n'
	for webapp in os.path.sep.join ([homedir, 'webapps', 'openemm']), os.path.sep.join ([homedir, 'webapps', 'openemm-ws']):
		prop = os.path.sep.join ([webapp, 'WEB-INF', 'classes', 'emm.properties'])
		save = prop + '.orig'
		fd = open (prop)
		content = fd.readlines ()
		fd.close ()
		ncontent = []
		changed = False
		for line in content:
			if line[0] != '#':
				parts = line.split ('=', 1)
				if len (parts) == 2:
					if rplc.has_key (parts[0]):
						nline = rplc[parts[0]]
						if nline != line:
							line = nline
							changed = True
					elif not parts[0] in ignores:
						if '/' in line:
							srv.error (listaErros["entradaInvalida"][1] % (prop, line), listaErros["entradaInvalida"][0])
			ncontent.append (line)
		if changed:
			try:
				os.rename (prop, save)
			except (WindowsError, OSError):
				pass
			fd = open (prop, 'w')
			fd.write (''.join (ncontent))
			fd.close ()
		log4j = os.path.sep.join ([webapp, 'WEB-INF', 'classes', 'log4j.properties'])
		log4jold = log4j + '.orig'
		fd = open (log4j)
		content = fd.readlines ()
		fd.close ()
		ncontent = []
		changed = False
		for line in content:
			if not line.startswith ('#'):
				for (old, new) in [('log/openemm', 'var/log/log4j-openemm.log')]:
					if old in line:
						line = line.replace (old, new)
						changed = True
			ncontent.append (line)
		if changed:
			try:
				os.rename (log4j, log4jold)
			except (WindowsError, OSError):
				pass
			fd = open (log4j, 'w')
			fd.write (''.join (ncontent))
			fd.close ()

def checkpaths (srv, home):
	required = ['var', 'var\\tmp', 'temp']
	for path in required:
		fpath = os.path.sep.join ([home, path])
		if not os.path.isdir (fpath):
			try:
				os.mkdir (fpath)
			except (WindowsError, OSError), e:
				srv.error (str (e),listaErros["caminhoInvalido"][0])

def checksetenv (home):
	lpath = os.path.sep.join ([home, 'webapps', 'openemm', 'WEB-INF', 'lib'])
	if os.path.isdir (lpath):
		cp = []
		for fname in os.listdir (lpath):
			if fname.lower ().startswith ('mysql') and fname.lower.endswith ('.jar'):
				cp.append (os.path.sep.join ([lpath, cp]))
	sepath = os.path.sep.join ([home, 'bin', 'setenv.bat'])
	if cp:
		content = 'set "CLASSPATH=%s"\n' % (os.path.pathsep.join (cp))
		fd = open (content, 'wt')
		fd.write (content)
		fd.close ()
	else:
		try:
			os.unlink (sepath)
		except OSError:
			pass

def checkserverxml (home):
	path = os.path.sep.join ([home, 'conf', 'server.xml'])
	if os.path.isfile (path):
		fd = open (path, 'r')
		content = fd.read ()
		fd.close ()
		ncontent = content.replace ('/home/openemm', home.replace (os.path.sep, '/'))
		if ncontent != content:
			fd = open (path, 'w')
			fd.write (ncontent)
			fd.close ()
			
def pystart (cmd, param = None):
	try:
		import	agn
		agn.require ('2.0.0')
	except:
		self.error (listaErros["semCodAgn"][1], listaErros["semCodAgn"][0])
	args = [cmd]
	if param:
		args += param.split ()
	args.insert (0, agn.pythonbin)
	return os.spawnv (os.P_NOWAIT, args[0], args)

def tomcatexec (srv, module, what):
	lpath = srv.home + os.path.sep + 'var' + os.path.sep + 'log' + os.path.sep
	lout = lpath + module + '_stdout.log'
	lerr = lpath + module + '_stderr.log'
	cmd = os.path.sep.join ([srv.tomcathome, 'bin', '%s.bat' % what])
	args = [cmd]
	env = os.environ.copy ()
	env['LANG'] = 'en_US.ISO8859_1'
	saveout = os.dup (1)
	saveerr = os.dup (2)
	try:
		os.close (1)
		os.close (2)
	except Exception, e:
		srv.warning("Nao foi possivel fechar as saidas padrao ou de erro: %s" % str(e))
		
	os.open (lout, os.O_WRONLY | os.O_APPEND | os.O_CREAT, 0666)
	os.open (lerr, os.O_WRONLY | os.O_APPEND | os.O_CREAT, 0666)
	pid = os.spawnve (os.P_NOWAIT, args[0], args, env)
	try:
		os.close (1)
		os.close (2)
	except Exception, e:
		srv.warning("Nao foi possivel fechar as saidas padrao ou de erro: %s" % str(e))
	
	os.dup (saveout)
	os.dup (saveerr)
	os.close (saveout)
	os.close (saveerr)
	return pid

def tomcatstart (home, module):
	return tomcatexec (home, module, 'startup')

def tomcatstop (home, module):
	return tomcatexec (home, module, 'shutdown')

class OpenEmmSvc (win32serviceutil.ServiceFramework):
	_svc_name_ = "OpenEMM"
	_svc_display_name_ = "OpenEMM Service"
	_svc_description_ = "Servico que gerencia o sistema OpenEMM."
	
	def show (self,s):
		servicemanager.LogInfoMsg(s)
		logging.info(s)
		
	def warning (self,s):
		servicemanager.LogWarningMsg(s)
		logging.warning(s)
		
	def error (self,msg,codErro):
		servicemanager.LogErrorMsg(msg)
		self.ReportServiceStatus(win32service.SERVICE_STOPPED,
			win32ExitCode=winerror.ERROR_SERVICE_SPECIFIC_ERROR, svcExitCode=codErro
		)
		logging.error("%s (Cod erro: %s)" % (msg,codErro))
		os._exit(codErro)
	
	def iniciaServico(self):
		try:
			homedrive = os.environ['HOMEDRIVE']
		except KeyError:
			homedrive = 'C:'
		self.home = homedrive + os.path.sep + 'OpenEMM'
		if not os.path.isdir (self.home):
			guess = None
			for disk in 'CDEFGHIJKLMNOPQRSTUVWXYZ':
				temp = disk + ':' + os.path.sep + 'OpenEMM'
				if os.path.isdir (temp):
					guess = temp
					break
			if guess is None:
				self.error (listaErros["semPasta"][1] % self.home, listaErros["semPasta"][0]) 
			self.home = guess
		self.show ('Pasta do OpenEMM: %s.' % self.home)
		checkprop (self,self.home)
		checkpaths (self,self.home)
		checkserverxml (self.home)
		
		os.environ['HOME'] = self.home
		binhome = self.home + os.path.sep + 'bin'
		addpath (binhome)
		schome = binhome + os.path.sep + 'scripts'
		os.environ['PYTHONPATH'] = schome
		if not schome in sys.path:
			sys.path.append (schome)
		os.environ['LC_ALL'] = 'C'
		os.environ['LANG'] = 'en_US.ISO8859_1'
		os.environ['NLS_LANG'] = 'american_america.UTF8'
		
		try:
			import	agn
			agn.require ('2.0.0')
		except:
			self.error (listaErros["semCodAgn"][1], listaErros["semCodAgn"][0])
		
		#
		# Check for working database
		if not 'DBase' in dir (agn):
			self.error (listaErros["semBD"][1], listaErros["semBD"][0])
		#
		# add python to path
		addpath (agn.pythonpath)
		#
		# find jdk
		jdkkey = r'SOFTWARE\JavaSoft\Java Development Kit'
		version = agn.winregFind (jdkkey, 'CurrentVersion')
		if version is None:
			self.error (listaErros["semJDK"][1], listaErros["semJDK"][0])
		javahome = agn.winregFind (jdkkey + '\\' + version, 'JavaHome')
		addpath (javahome + os.path.sep + 'bin')
		os.environ['JAVA_HOME'] = javahome
		os.environ['JAVA_OPTIONS'] = '-Xms256m -Xmx512m -XX:MaxPermSize=256m -Xss256k'
		
		#
		# find tomcat
		if self.tomcathome is None:
			for fname in sorted ([_f for _f in os.listdir (homedrive + os.path.sep) if _f.startswith ('apache-tomcat-')]):
				self.tomcathome = os.path.sep.join ([homedrive, fname])
			if self.tomcathome is None:
				self.error (listaErros["semTomcat"][1], listaErros["semTomcat"][0])
		addpath (self.tomcathome + os.path.sep + 'bin')
		os.environ['CATALINA_HOME'] = self.tomcathome
		os.environ['CATALINA_BASE'] = self.home
		
		#
		# find mysql
		mysqlhome = None
		for version in ['5.0', '5.1']:
			mskey = r'SOFTWARE\MySQL AB\MySQL Server %s' % version
			mysqlhome = agn.winregFind (mskey, 'Location')
			if not mysqlhome is None:
				break
		if mysqlhome is None:
			bkey = r'SOFTWARE\MySQL AB'
			try:
				for mskey in sorted ([_r for _r in agn.winregList (bkey) if type (_r) in types.StringTypes]):
					if 'server' in mskey.lower ():
						mysqlhome = agn.winregFind ('%s\\%s' % (bkey, mskey), 'Location')
			except TypeError:
				self.warning('Servidor MySQL nao encontrado usando reg.key %s. Isto so e um problema, se voce NAO utiliza banco de dados remoto.' % bkey)
		if not mysqlhome is None:
			addpath (mysqlhome + os.path.sep + 'bin')
		
		# 
		#
		db = agn.DBase ()
		if not db:
			self.error (listaErros["erroConfBD"][1], listaErros["erroConfBD"][0])
		i = db.cursor ()
		if not i:
			self.error (listaErros["erroConexaoBD"][1], listaErros["erroConexaoBD"][0])
		i.close ()
		db.close ()
		#
		# remove potential stale files
		sessions = os.path.sep.join ([self.home, 'webapps', 'openemm', 'WEB-INF', 'sessions'])
		fnames = [agn.winstopfile]
		if os.path.isdir (sessions):
			for fname in os.listdir (sessions):
				fnames.append (sessions + os.path.sep + fname)
		for fname in fnames:
			try:
				os.unlink (fname)
		#		show ('Removed stale file %s.\n' % fname)
			except (WindowsError, OSError):
				pass
		#
		# change to home directory
		os.chdir (self.home)	
		
		#
		# Iniciando
		p_upd = pystart (schome + os.path.sep + 'update.py', 'account bounce')
		if p_upd == -1:
			self.error (listaErros["erroIniUpdate"][1], listaErros["erroIniUpdate"][0])
		p_dst = pystart (schome + os.path.sep + 'pickdist.py')
		if p_dst == -1:
			self.error (listaErros["erroIniPickdist"][1], listaErros["erroIniPickdist"][0])
		p_bav = pystart (schome + os.path.sep + 'bav-update.py')
		if p_bav == -1:
			self.error (listaErros["erroIniBavupdate"][1], listaErros["erroIniBavupdate"][0])
		p_sem = pystart (schome + os.path.sep + 'semu.py')
		if p_sem == -1:
			self.error (listaErros["erroIniSemu"][1], listaErros["erroIniSemu"][0])
		p_con = tomcatstart (self, 'openemm')
		if p_con == -1:
			self.error (listaErros["erroIniTomcat"][1], listaErros["erroIniTomcat"][0])
		
		return agn.winstopfile
		
	def finalizaServico(self, flagFechar):
		tomcatstop (self, 'openemm')
		open (flagFechar, 'w').close ()
	
	def __init__(self,args):
		win32serviceutil.ServiceFramework.__init__(self,args)
		self.stop_event = win32event.CreateEvent(None,0,0,None)
		self.home = None
		# Optional configuration area
		#
		########################################################################
		#                                                                      #
		#                                Tomcat                                #
		#                                                                      #
		########################################################################
		#
		# Path to installed Tomcat distribution, set this only, if the script
		# is unable to determinate it by itself, e.g.:
		# tomcathome = r'C:\Programs\Apache Software Foundation\Tomcat\7.0'
		#
		self.tomcathome = None
		#
		########################################################################
		#                      End of configuration section                    #
		########################################################################		
	def SvcStop(self):
		self.ReportServiceStatus(win32service.SERVICE_STOP_PENDING)
		win32event.SetEvent(self.stop_event)
		#logging.info('Finalizando OpenEMM...')

	def SvcDoRun(self):		
		servicemanager.LogMsg(
			servicemanager.EVENTLOG_INFORMATION_TYPE,
			servicemanager.PYS_SERVICE_STARTED,
			(self._svc_name_,'')
		)
		logging.info("OpenEMM iniciado.")
		
		flagFechar = self.iniciaServico()

		# Aguardando chamada para finalização
		while 1:
			rc = win32event.WaitForMultipleObjects((self.stop_event,), 0,
                win32event.INFINITE)
			if rc == win32event.WAIT_OBJECT_0:
				# Finalizando serviço...
				self.finalizaServico(flagFechar)
				break

		servicemanager.LogMsg(
			servicemanager.EVENTLOG_INFORMATION_TYPE,
			servicemanager.PYS_SERVICE_STOPPED,
			(self._svc_name_,'')
		)
		logging.info("OpenEMM finalizado.")
		return

if __name__ == '__main__':
	win32serviceutil.HandleCommandLine(OpenEmmSvc)