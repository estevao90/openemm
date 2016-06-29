<%@ page language="java" contentType="text/html; charset=utf-8"
         import="java.util.Locale, org.agnitas.util.AgnUtils"  errorPage="/error.jsp" %>
<%@ taglib uri="/WEB-INF/agnitas-taglib.tld" prefix="agn" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    pageContext.setAttribute("CKEDITOR_PATH", AgnUtils.getEMMProperty("ckpath"));
%>

<script type="text/javascript">
    var baseUrl = window.location.pathname;
    pos = baseUrl.lastIndexOf('/');
    baseUrl = baseUrl.substring(0, pos);

    var agntagDialogPage = '<html:rewrite page="/${CKEDITOR_PATH}/plugins/emm/dialogs/emm-tags-dialog-content-frame.jsp;jsessionid=${pageContext.session.id}"/>';
    var agntagDialogTitle = '<bean:message key="htmled.agntagsWindowTitle" />';
    var agntagDialogTooltip = '<bean:message key="htmled.agntagsButtonTooltip" />';

    var isCKEditorActive = {};

    function toggleEditor(textAreaId, editorWidth, editorHeight, mailingId) {
        if (isEditorVisible(textAreaId)) {
            removeEditor(textAreaId);
        }
        else {
            createEditor(textAreaId, editorWidth, editorHeight, mailingId);
        }
    }

    function createEditor(textAreaId, editorWidth, editorHeight, mailingId) {
         createEditorExt(textAreaId, editorWidth, editorHeight, mailingId, false);
    }

    function createEditorExt(textAreaId, editorWidth, editorHeight, mailingId, fullPage) {
        var imageBrowserUrl = mailingId == 0 ? '' : '<html:rewrite page="/${CKEDITOR_PATH}/emm-image-browser.jsp?mailingID="/>' + mailingId;
        if (!isEditorVisible(textAreaId)) {
            CKEDITOR.replace(textAreaId, {
                customConfig : 'emm_config.js',
                fullPage : fullPage,
                width : editorWidth,
                height : editorHeight,
                baseHref : baseUrl + '/${CKEDITOR_PATH}/',
                filebrowserImageBrowseUrl : imageBrowserUrl,
                filebrowserImageWindowWidth : '700',
                filebrowserImageWindowHeight : '600'
            });
            isCKEditorActive[textAreaId] = true;
        }
    }

    function removeEditor(textAreaId) {
        if (isEditorVisible(textAreaId)) {
            CKEDITOR.instances[textAreaId].destroy();
            isCKEditorActive[textAreaId] = false;
        }
    }

    function isEditorVisible(textAreaId) {
        if (isCKEditorActive[textAreaId] == undefined) {
            isCKEditorActive[textAreaId] = false;
        }
        return isCKEditorActive[textAreaId];
    }

    function removeAllEditors() {
        for (var textAreaId in isCKEditorActive) {
            if (isCKEditorActive[textAreaId]) {
                toggleEditor(textAreaId, 0, 0);
            }
        }
    }

    function openEditorsExist() {
        for (var textAreaId in isCKEditorActive) {
            if (isCKEditorActive[textAreaId]) {
                return true;
            }
        }
        return false;
    }
</script>

<script type="text/javascript" src="${CKEDITOR_PATH}/ckeditor.js"></script>