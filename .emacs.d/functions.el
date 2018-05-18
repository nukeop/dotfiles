(defun is-mode-p (mode)
  "Predicate to return `true' if the current buffer's major mode matches the requested MODE."
  (buffer-local-value 'major-mode (current-buffer))
  (eq major-mode mode))
