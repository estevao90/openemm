CKEDITOR.plugins.add('emm',
{
    init: function(editor)
    {
        var pluginName = 'emm';

        CKEDITOR.dialog.add(pluginName, this.path + 'dialogs/emm.js');

        editor.addCommand(pluginName, new CKEDITOR.dialogCommand(pluginName));
        editor.ui.addButton('AGNTag',
            {
                label: agntagDialogTooltip,
                command: pluginName,
                icon: CKEDITOR.plugins.getPath(pluginName) + 'emm.gif'
            });
    }
});