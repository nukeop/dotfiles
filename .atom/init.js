const _ = window.require('lodash');
const BufferedProcess = window.require('atom').BufferedProcess;
const functions = require('./functions');
const packages = require('./packages');
const themes = require('./themes');
const jira = require('./jira');


// Install required packages automatically
let installedPackages = atom.packages.getAvailablePackageNames();

for(i in packages) {
  let package = packages[i];

  if (_.includes(installedPackages, package)) {
    continue;
  }
  atom.notifications.addInfo(`Installing package ${package}...`);
  new BufferedProcess({
    command: 'apm',
    args: ['install', package],
    stdout: msg => console.log(msg),
    exit: code => atom.notifications.addSuccess(`Package ${package} installed with code ${code}`)
  });
}

// Install and activate required themes
let installedThemes = atom.themes.getLoadedThemeNames();

for(i in themes.install) {
  if (_.includes(installedThemes, themes.install[i])) {
    continue;
  }
  atom.notifications.addInfo(`Installing theme ${themes.install[i]}...`);
  new BufferedProcess({
    command: 'apm',
    args: ['install', themes.install[i]],
    stdout: msg => console.log(msg),
    exit: code => atom.notifications.addSuccess(`Theme ${themes.install[i]} installed with code ${code}`)
  });
}

atom.config.set('core.themes', themes.activate);
atom.themes.activateThemes();

// Set config variables
atom.config.set('editor.fontFamily', 'Ubuntu Mono');
atom.config.set('editor.fontSize', 19);
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

// Add JIRA button to status bar
jira.addJira();

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
