;;----------------------------------------------------------------------------
;; Open commonly edited emacs config files
;;----------------------------------------------------------------------------
(defun open-dotfile ()
  (interactive)
  (find-file "~/.emacs.d/init.el")
  )

(defun open-dotfile-for-keybindings ()
  (interactive)
  (find-file "~/.emacs.d/keybindings.el")
  )

(defun open-dotfile-for-modeline ()
  (interactive)
  (find-file "~/.emacs.d/modeline.el")
  )

(defun open-dotfile-for-hooks ()
  (interactive)
  (find-file "~/.emacs.d/hooks.el")
  )

;;----------------------------------------------------------------------------
;; Delete the current file
;;----------------------------------------------------------------------------
(defun delete-this-file ()
  "Delete the current file, and kill the buffer."
  (interactive)
  (unless (buffer-file-name)
    (error "No file is currently being edited"))
  (when (yes-or-no-p (format "Really delete '%s'?"
                             (file-name-nondirectory buffer-file-name)))
    (delete-file (buffer-file-name))
    (kill-this-buffer)))

;;----------------------------------------------------------------------------
;; Rename the current file
;;----------------------------------------------------------------------------
(defun rename-this-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "New name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (unless filename
      (error "Buffer '%s' is not visiting a file!" name))
    (progn
      (when (file-exists-p filename)
        (rename-file filename new-name 1))
      (set-visited-file-name new-name)
      (rename-buffer new-name))))

;;----------------------------------------------------------------------------
;; Duplicate line
;;----------------------------------------------------------------------------
(defun duplicate-line ()
  "Duplicates the line the cursor is currently in."
  (interactive)
  (let (
        (text (buffer-substring (line-beginning-position) (line-end-position)))
        (column (current-column))
        )
    
    (end-of-line)
    (newline)
    (insert text)
    (open-line 0)
    (move-to-column column)
    )
  )
