const _ = window.require('lodash');
const BufferedProcess = window.require('atom').BufferedProcess;
const functions = require('./functions');
const packages = require('./packages');


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
