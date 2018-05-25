;; Mode line settings

;;; Code:
(load-file "~/.emacs.d/modeline-faces.el")
(load-file "~/.emacs.d/modeline-functions.el")

(setq-default mode-line-format
	      '(
		(:eval
		 (simple-mode-line-render

		  (concat
		   ;; Left

		   ;; Eyebrowse mode - workspace number
		   (eval (when (and (bound-and-true-p eyebrowse-mode)
				     (< 1 (length (eyebrowse--get 'window-configs))))
			    (propertize  (format "  %s  " (int-to-string (eyebrowse--get 'current-slot)))
					 'face 'mode-blue
					 )
			    )
			 )

		   ;; Current major mode and its icon
		   (eval
		    (let ((mode (format-mode-line " %m ")))
		      (propertize (concat (mode-icon) mode) 'face
				  (cond ((not(eq modeline-selected-window (get-buffer-window))) 'mode-black)
					((eql buffer-read-only t) 'mode-blue)
					((buffer-modified-p) 'mode-red)
					(t 'mode-green)
					)
				  )
		      )
		    )

		   " "
		   
		   ;; Buffer name
		   (eval
		    (when uniquify-managed
		      (propertize (format "%s/" (file-name-nondirectory
						 (directory-file-name default-directory)))
				  'face (cond
					 ((eq modeline-selected-window (get-buffer-window)) 'mode-line-dir-name)
					 (t 'mode-black)
					 )
				  )
		      )
		    )

		   (eval
		    (propertize (format "%s" (uniquify-buffer-base-name)))
		    )

		   ;; Line and column
		   (propertize (format-mode-line " %l:%c "))
		   )
	       

		  (concat
		   ;; Right

		   ;; Git branch
		   (eval (when (stringp vc-mode)
			   (propertize (format " %s %s " (all-the-icons-octicon "git-branch" :v-adjust -0.05) (replace-regexp-in-string "^ Git[-:]" "" (eval vc-mode))) 'face '(:inherit mode-black-green))
			   )
			 )
		   (propertize (custom-modeline-flycheck-status) 'face
			       (cond
				((eq modeline-selected-window (get-buffer-window)) '(:inherit mode-line :height 130))
				(t '(:inherit mode-black :height 130))
				)
			       )
		   (propertize (custom-modeline-time) 'face
			       (cond
				((eq modeline-selected-window
				     (get-buffer-window)) '(:inherit mode-white :foreground "#2d3436"))
				(t 'mode-black)
				)
			       )
		   )
		  
		  )
		 )
		)
	      )
