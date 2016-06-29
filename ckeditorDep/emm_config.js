CKEDITOR.editorConfig = function(config) {
/*-- EDITOR BEHAVIOUR --*/

    /*true keeps HTML structure after paste from Word*/
    /*FCKConfig.CleanWordKeepsStructure*/
    config.pasteFromWordNumberedHeadingToList = true;

    /*FCKConfig.DocType*/
    config.docType = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">';

    /*true removes all formatting info*/
    /*FCKConfig.ForcePasteAsPlainText*/
    config.forcePasteAsPlainText = false;

    /*true inserts html, head and body tags*/
    /*FCKConfig.FullPage*/
    config.fullPage = false;

    /*cursor focus in editing area*/
    /*FCKConfig.StartupFocus*/
    config.startupFocus = false;

    /*FCKConfig.MaxUndoLevels*/
    config.undoStackSize = 15;

/*-- STYLES --*/

    /*FCKConfig.FontFormats*/
    config.format_tags = 'p;div;pre;address;h1;h2;h3;h4;h5;h6';

/*-- HTML OUTPUT --*/

    /*FCKConfig.EnterMode*/
    config.enterMode = CKEDITOR.ENTER_BR;

    /*FCKConfig.ShiftEnterMode*/
    config.shiftEnterMode = CKEDITOR.ENTER_BR;

    /*true fills empty blocks with '&nbsp;'*/
    /*FCKConfig.FillEmptyBlocks*/
    config.fillEmptyBlocks = true;

    /*true outputs '&' instead of '&amp;'*/
    /*FCKConfig.ForceSimpleAmpersand*/
    config.forceSimpleAmpersand = true;

    /*true converts special characters to HTML entities*/
    /*FCKConfig.ProcessHTMLEntities*/
    config.entities = true;

    /*true shows border for tables with border=0*/
    /*FCKConfig.ShowBorders*/
    config.startupShowBorders = true;

    /*number of '&nbsp' for a tab*/
    /*FCKConfig.TabSpaces*/
    config.tabSpaces = 5;

/*USER INTERFACE*/

	/* Forçar uso do pt-br*/
	config.language = "pt-br";

    /*FCKConfig.SmileyColumns*/
    config.smiley_columns = 8;

    /*toolbar can be hidden*/
    /*FCKConfig.ToolbarCanCollapse*/
    config.toolbarCanCollapse = true;

    /*toolbar is displayed at startup*/
    /*FCKConfig.ToolbarStartExpanded*/
    config.toolbarStartupExpanded = true;

    /*features available in toolbar "emm"*/
    /*FCKConfig.ToolbarSets["emm"]*/
	config.toolbar = [
		{ name: 'document', items: [ 'Source', '-', 'NewPage', 'Preview', 'Print', '-', 'Templates' ] },
		{ name: 'clipboard', items: [ 'Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo' ] },
		{ name: 'editing', items: [ 'Find', 'Replace', '-', 'SelectAll', '-', 'Scayt' ] },
			{ name: 'links', items: [ 'Link', 'Unlink', 'Anchor' ] },
		'/',
		{ name: 'basicstyles', items: [ 'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat' ] },
		{ name: 'paragraph', items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', 'CreateDiv', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
		{ name: 'insert', items: [ 'Image', 'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak', 'Iframe', 'AGNTag' ] },
		'/',
		{ name: 'styles', items: [ 'Styles', 'Format', 'Font', 'FontSize' ] },
		{ name: 'colors', items: [ 'TextColor', 'BGColor' ] },
		{ name: 'tools', items: [ 'Maximize', 'ShowBlocks' ] },
		{ name: 'about', items: [ 'About' ] }
	];

/*ADVANCED*/

	/* Adicionando plugin com tags Agnitas*/
    config.extraPlugins = 'emm';
	
	// Setando template 
    config.skin = 'office2013';

    /*protect source code matching regexp by hiding*/
    /*FCKConfig.ProtectedSource.Add*/
    config.protectedSource.push(/<img[^>]*src="\[agn[^>]*>/gi);
};