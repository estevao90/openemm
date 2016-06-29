<%@ page language="java" import="org.agnitas.util.*,org.agnitas.web.*, org.agnitas.beans.*"
         contentType="text/html; charset=utf-8"  errorPage="/error.jsp" %>
<%@ taglib uri="/WEB-INF/agnitas-taglib.tld" prefix="agn" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<agn:CheckLogon/>

<agn:Permission token="mailing.components.show"/>

<% int tmpMailingID = Integer.parseInt(request.getParameter("mailingID"));
    Company company = ((Admin) session.getAttribute("emm.admin")).getCompany();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <link type="text/css" rel="stylesheet" href="../${emmLayoutBase.cssURL}/style.css">
    <link type="text/css" rel="stylesheet" href="../${emmLayoutBase.cssURL}/structure.css">
    <link type="text/css" rel="stylesheet" href="../${emmLayoutBase.cssURL}/displaytag.css">
</head>

<script type="text/javascript">

    function updateImg() {
        var imageNameValue = document.selform.imgsel.value;
        if (imageNameValue == null || imageNameValue.length == 0){
            document.theimage.style.display = 'none';
            document.getElementById("no_image_message").style.display = '';
        } else {
            document.theimage.src = normalizeName(imageNameValue);
        }
        return 1;
    }

    function getUrlParam(paramName) {
        var reParam = new RegExp('(?:[\?&]|&amp;)' + paramName + '=([^&]+)', 'i');
        var match = window.location.search.match(reParam);
        return (match && match.length > 1) ? match[1] : '';
    }

    function submit_image() {
        var funcNum = getUrlParam('CKEditorFuncNum');
        window.opener.CKEDITOR.tools.callFunction(funcNum, normalizeName(document.selform.imgsel.value));
        window.close();
    }

    function normalizeName(fname) {
        if (fname.substr(0, 4).toLowerCase() != 'http') {
        fname = '<%= company.getRdirDomain() %>/image?ci=<%= company.getId() %>&mi=<%= tmpMailingID %>&name=' + fname;
        }
        return fname;
    }
</script>

<body onload="updateImg()">

<% String query = "from MailingComponent where (comptype=1 or comptype=5) and mailing_id=" +
        tmpMailingID +
        " and company_id=" + company.getId() + " order by comptype desc, compname";
%>
<form name="selform" id="selform" action="">
    <div>
        <div class="float_left fckeditor_select_panel">
            <div class="float_left">
                <bean:message key="mailing.Graphics_Component"/>:&nbsp;
                <select name="imgsel" id="imgsel" onchange="updateImg()" size="1">
                    <agn:HibernateQuery id="comp" query="<%= query %>" maxRows="100">
                        <option value="${comp.componentName}">${comp.componentName}</option>
                    </agn:HibernateQuery>
                </select>
            </div>
            <div class="action_button add_button">
                <a href="#" onclick="submit_image(); return false;">
                    <span><bean:message key="Select"/></span>
                </a>
            </div>
        </div>
        <br>
        <div class="dotted_line fckeditor_dotted_line"></div>
        <br>
    </div>
</form>

<table border="0" cellspacing="0" cellpadding="0" width="100%" height="85%">
    <tr width="100%">
        <td align="center" valign="center">
            <img src="ckeditor-3.6.3/images/spacer.gif" name="theimage" border="1">
            <div id="no_image_message" style="display:none;"><bean:message key="mailing.Graphics_Component.NoImage"/></div>
        </td>
    </tr>
</table>
</body>
</html>
