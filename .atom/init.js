const _ = window.require('lodash');
const BufferedProcess = window.require('atom').BufferedProcess;
const functions = require('./functions');

// Set config variables
atom.config.set('editor.fontFamily', 'FantasqueSansMono Nerd Font');
atom.config.set('editor.fontSize', 16);
atom.config.set('editor.lineHeight', 1.3);
atom.config.set('editor.showIndentGuide', true);
atom.config.set('editor.softWrap', true);

// Define custom commands
atom.commands.add('atom-text-editor:not([mini])', 'user:sort-lines', event => {
  functions.sortLines();
});

atom.commands.add('atom-text-editor:not([mini])', 'user:reload-buffer', event => {
  functions.reloadCurrentBuffer();
});

atom.commands.add('body', 'user:load-from-github-gist', event => {
  functions.getGist();
});

// Change tab titles to directory/file.ext
atom.workspace.observeTextEditors(editor => {
  if (editor.getTitle() !== 'untitled') {
    let sp = editor.getPath().split('/');
    let title = sp.slice(sp.length - 2).join('/');
    editor.getTitle = () => title;
    editor.getLongTitle = () => title;
    editor.emitter.emit('did-change-title', editor.getTitle());
  }
});

atom.workspace.onDidOpen(event => {
  _.forEach(event.pane.items, item => {
    if (item.emitter) {
      item.emitter.emit('did-change-title', item.getTitle());
    }
  });
});
