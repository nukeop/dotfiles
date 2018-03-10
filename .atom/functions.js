const _ = window.require('lodash');
const TextBuffer = window.require('text-buffer');

const githubApiUrl = 'https://api.github.com/';

function sortLines() {
  let editor = atom.workspace.getActiveTextEditor();
  let selectedText = editor.getSelectedText();
  let lines = selectedText.split('\n');
  lines = _.sortBy(lines);
  lines = lines.join('\n');
  let selection = editor.getLastSelection();
  selection.insertText(lines);
}

function reloadCurrentBuffer() {
  let editor = atom.workspace.getActiveTextEditor();
  let buffer = editor.getBuffer();
  buffer.reload();
}

function getGist() {
  const editor = atom.workspace.getActiveTextEditor();
  let selectedText = editor.getSelectedText();
  let gistId = _.last(selectedText.split('/'));
  atom.notifications.addInfo(`Downloading gist with id ${gistId}...`);
  fetch(githubApiUrl + 'gists/' + gistId)
  .then(data => data.json())
  .then(data => {
    atom.notifications.addInfo(`Downloaded gist: ${data.description}`);
    let files = data.files;

    let pane = atom.workspace.getActivePane();

    for(i in files) {
      let fileEditor = atom.workspace.buildTextEditor();
      let item = pane.addItem(fileEditor, {index: 0});
      pane.activateItem(item);
      fileEditor.setText(files[i].content);

      let title = atom.views.getView(pane).querySelector('.tab:first-child').querySelector('.title');
      title.innerText = files[i].filename;
      console.log(title);
      console.log(files[i].filename);
    }
  });



}

module.exports = {
  sortLines,
  reloadCurrentBuffer,
  getGist
}
