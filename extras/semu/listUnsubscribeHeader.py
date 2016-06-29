#!/usr/bin/env python
# -*- coding: utf-8  -*-

__aps__ = {
	'api':		'1.0.0',
	'version':	'1.0',
	'uri':		None
}

#
#
# Plugin adaptado para recuperar a URL de unsubscribe, no modo rastreável ou não, e inserí-la no
# cabeçalho do e-mail, utilizando um link mnemônico, quando for o caso.
# Para funcionar, o link de unsubscribe deve ter o id "linkUnsubscribe". Se não for encontrado 
# o referido link nada é feito.
#
# O link mnemônico deve ser configurado no arquivo semu.cfg no parâmetro uri do [listUnsubscribeHeader]
# Atente para o parâmetro uid=%s, que deve estar na uri.
#

from bs4 import BeautifulSoup
import quopri
import re

def imprime(mail):
	import pprint
	with open("C:\\OpenEMM\\logs\\logPluginUnsubscribeHeader.log","a") as f:
		pprint.pprint(vars(mail),f)

def handleOutgoingMail (ctx, mail):
	#imprime(mail)
	uri = __aps__['uri']
	if uri:
		found = None
		for line in mail.head:
			if line.lower ().startswith ('list-unsubscribe:'):
				found = line
				break
		if found is None:	
			# Tentando extrair link embutido na newsletter
			if mail.body is not None:
				soup = BeautifulSoup(quopri.decodestring(mail.body), "html.parser")
				linkSair = soup.find('a',id='linkUnsubscribe')
				
				if linkSair is not None:
					if linkSair['href'].lower().find("form.do") != -1:
						novoLink = linkSair['href']
					else:
					# Substituindo link pelo mnemônico, a fim de permitir reconhecimento em alguns leitores de e-mails
						novoLink = (uri % linkSair['href'][linkSair['href'].lower().find("uid=")+4:])
						er = re.compile(r"<a[^<]*linkUnsubscribe.*?>",re.IGNORECASE|re.DOTALL)
						
						linkInserido = quopri.decodestring(re.search(er,mail.body).group())
						erStyle = re.compile(r"(style=.*?)[a-z].=",re.IGNORECASE|re.DOTALL)
						styleAdd = re.search(erStyle,linkInserido).group(1) if re.search(erStyle,linkInserido) else ""

						mail.body = re.sub(er,quopri.encodestring(("<a %s href=%s>" % (styleAdd,novoLink))),mail.body)
						
					mail.head.append ('List-Unsubscribe: <%s>' % novoLink)
					#imprime(mail)
					return

					
if __name__ == '__main__':
	def _main ():
		class struct:
			pass
		mail = struct ()
		mail.head = []
		mail.body = None
		mail.sender = 'news@letter.com'
		mail.receiver = 'someone@somewhere.com'
		__aps__['uri'] = 'http://localhost:8080/unsubscribe.html?uid=%s'
		handleOutgoingMail (None,mail)
		print mail.body
		print mail.head[0] if mail.head else "Cabecalho vazio!"
	
	_main ()
	
