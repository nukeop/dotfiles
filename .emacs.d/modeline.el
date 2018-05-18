;; Mode line settings

;;; Code:
(load-file "~/.emacs.d/modeline-faces.el")
(load-file "~/.emacs.d/modeline-functions.el")

(defun simple-mode-line-render (left right)
  "Return a string of `window-width' length containing LEFT, and RIGHT
 aligned respectively."
  (let* ((available-width (- (window-width) (length left) -3)))
    (format (format "%%s %%%ds " available-width) left right)))

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
		      (if (eql buffer-read-only t)
			  (propertize (concat (mode-icon) mode) 'face 'mode-blue)
			(if (buffer-modified-p)
			    (propertize (concat (mode-icon) mode) 'face 'mode-red)
			  (propertize (concat (mode-icon) mode) 'face 'mode-green)
			  )
			)
		      )
		    )

		   ;; Buffer name
		   (eval
		    (if (string-match "\<.*\>" (buffer-name))
			(concat
			 (propertize (format " %s/" (substring (eval(match-string 0)) 2 ))
				     'face 'mode-line-dir-name
				     )
			 (propertize (format "%s " (substring (buffer-name) 0 (match-beginning 0))) 'face 'mode-line-buffer-name)
			 )
		      
		      (propertize (format " %s " (buffer-name)))
		      )
		    )

		   ;; Line and column
		   (propertize (format-mode-line " %l:%c "))
		   )

		  (concat
		   ;; Right

		   ;; Git branch
		   (eval (when (stringp vc-mode)
			   (propertize (format " %s %s " (all-the-icons-octicon "git-branch" :v-adjust -0.05) (replace-regexp-in-string "^ Git[-:]" "" (eval vc-mode))) 'face 'mode-white)
			   )
			 )
		   (propertize (custom-modeline-flycheck-status) 'face '(:inherit 'mode-purple :height 100))
		   (propertize (custom-modeline-time) 'face 'mode-white)
		   )
		  
		  )
		 )
		)
	      )
