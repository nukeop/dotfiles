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

module.exports = {
  sortLines
}
