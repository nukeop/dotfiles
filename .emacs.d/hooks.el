(add-hook 'prog-mode-hook (lambda()
			    (rainbow-delimiters-mode 1)
			    (show-paren-mode 1)
			    (auto-fill-mode)
			    (setq indent-tabs-mode nil)
			    (setq tab-width 2)
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
		           (setq ac-sources (append ac-sources '(ac-css-property)))
			   (rainbow-mode t)
			   (set-face-background 'web-mode-current-element-highlight-face "khaki1")
			   )
	        )

(add-hook 'rust-mode-hook (lambda ()
                            (ac-racer-setup)
                            (flycheck-rust-setup)
                            (racer-mode)
                            (auto-complete-mode)
                            ))


(defun js-modes-hook ()
  (emmet-mode t)
  (smartparens-mode t)
  (auto-complete-mode t)
  (rainbow-mode t)
  (add-to-list 'ac-sources 'ac-source-filename)
  (add-hook 'after-save-hook 'eslint-fix nil t)
  )

(add-hook 'rjsx-mode-hook 'js-modes-hook)
(add-hook 'js2-mode-hook 'js-modes-hook)

(add-hook 'python-mode-hook (lambda()
                              (anaconda-mode t)
                              )
          )

(add-hook 'lua-mode-hook (lambda()
                           (setq lua-indent-level 2)
                           )
	        )

(add-hook 'org-mode-hook (lambda()
                           (org-bullets-mode)
                           (org-indent-mode)
                           )
          )

(add-hook 'helm-before-initialize-hook (lambda()
                                         (linum-mode 0)
                                         ))

(defun terminals-hook ()
(set-face-attribute 'eshell-prompt nil :background "#22252c")
                              (setq buffer-face-mode-face
                                    '(:background "#22252c"
                                      :family "Terminus"))
                               (setq-local global-hl-line-mode
                                           nil)
                              (buffer-face-mode)
                              (linum-mode 0)
                              (set-fringe-style 0)
                              )

(add-hook 'eshell-mode-hook 'terminals-hook)
(add-hook 'term-mode-hook 'terminals-hook)

(add-hook 'helm-major-mode-hook (lambda()
                                  (face-remap-add-relative 'default '(:background "#22252c"))
                                  ))

(add-hook 'minibuffer-inactive-mode-hook (lambda()
                                  (face-remap-add-relative 'default '(:background "#22252c"))
                                  ))

(provide 'hooks)
