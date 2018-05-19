(defun is-mode-p (mode)
  "Predicate to return `true' if the current buffer's major mode matches the requested MODE."
  (buffer-local-value 'major-mode (current-buffer))
  (eq major-mode mode))

(defun open-dotfile ()
  (interactive)
  (find-file "~/.emacs.d/init.el")
  )

(defun open-dotfile-for-modeline ()
  (interactive)
  (find-file "~/.emacs.d/modeline.el")
  )

(defun open-dotfile-for-hooks ()
  (interactive)
  (find-file "~/.emacs.d/hooks.el")
  )
