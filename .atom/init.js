const _ = window.require('lodash');
const BufferedProcess = window.require('atom').BufferedProcess;
const functions = require('./functions');
const packages = require('./packages');
const themes = require('./themes');


// Install required packages automatically
let installedPackages = atom.packages.getAvailablePackageNames();

for(i in packages) {
  if (_.includes(installedPackages, packages[i])) {
    continue;
  }
  console.log(`Installing ${packages[i]}...`);
  new BufferedProcess({
    command: 'apm',
    args: ['install', packages[i]],
    stdout: msg => console.log(msg),
    exit: code => console.log(`Package installed with code ${code}`)
  });
}

// Install and activate required themes
let installedThemes = atom.themes.getLoadedThemeNames();

for(i in themes.install) {
  if (_.includes(installedThemes, themes.install[i])) {
    continue;
  }
  console.log(`Installing ${themes.install[i]}...`);
  new BufferedProcess({
    command: 'apm',
    args: ['install', packages[i]],
    stdout: msg => console.log(msg),
    exit: code => console.log(`Package installed with code ${code}`)
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
