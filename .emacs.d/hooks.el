(add-hook 'prog-mode-hook (lambda()
			    (rainbow-delimiters-mode 1)
			    (show-paren-mode 1)
			    (auto-fill-mode)
			    )
	  )

(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
(add-hook 'focus-out-hook #'garbage-collect)

(add-hook 'web-mode-hook (lambda ()
			   (setq web-mode-markup-indent-offset 2)
			   (setq web-mode-attr-indent-offset 2)
			   (setq web-mode-css-indent-offset 2)
			   (setq web-mode-code-indent-offset 2)
			   (setq css-indent-offset 2)
			   (setq rainbow-mode 1)
			   (set-face-background 'web-mode-current-element-highlight-face "khaki1")
			   )
	  )


(defun js-modes-hook ()
  (setq emmet-mode 1)
  (setq smartparens-mode 1)
  (setq auto-complete-mode 1)
  (add-to-list 'ac-sources 'ac-source-filename)

  (setq indent-tabs-mode nil)
  (setq tab-width 2)
  (setq rainbow-mode 1)
  )

(add-hook 'rjsx-mode-hook 'js-modes-hook)
(add-hook 'js2-mode-hook 'js-modes-hook)

(add-hook 'python-mode-hook (lambda()
			      (setq anaconda-mode 1)
			      )
	  )

(add-hook 'lua-mode-hook (lambda()
			   (setq lua-indent-level 2)
			   )
	  )

(provide 'hooks)
