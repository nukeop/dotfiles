const _ = window.require('lodash');

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

}

module.exports = {
  sortLines,
  reloadCurrentBuffer,
  getGist
}
