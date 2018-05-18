;; Mode line settings
(set-face-attribute 'mode-line nil
		    :background "#333353"
		    :box '(:line-width 8 :color "#333353")
		    )

(set-face-attribute 'mode-line-inactive nil
		    :foreground "#666699"
		    :box '(:line-width 8 :color "#333353")
		    )

(defface mode-line-buffer-name
  '((t
     :foreground "#ecf0f1"
     :background "#333353"
     :box(:line-width 8 :color "#333353")
     :family "Roboto Mono for Powerline Regular"
     :height 130
     ))
  "Buffer name face"
  :group 'basic-faces
  )

(defface mode-line-dir-name
  '((t
     :foreground "#7aa5ff"
     :background "#333353"
     :box(:line-width 8 :color "#333353")
     :family "Roboto Mono for Powerline Regular"
     :height 130
     ))
  "Directory name in mode line"
  :group 'basic-faces
  )

(defface mode-line-accent
  '((t
     :foreground "#ecf0f1"
     :background "#666699"
     :box(:line-width 8 :color "#ff79c6")
     ))
  "Accented parts of mode line"
  :group 'basic-faces
  )

(defface mode-line-eyebrowse
  '((t
     :foreground "#ecf0f1"
     :background "#3498db"
     :box(:line-width 8 :color "#3498db")
     ))
  "Eyebrowse workspace number"
  :group 'basic-faces
  )

(declare-function eyebrowse--get 'eyebrowse)

(setq-default mode-line-format
	      '(

		(:eval (when (and (bound-and-true-p eyebrowse-mode)
				  (< 1 (length (eyebrowse--get 'window-configs))))
			 (propertize  (format "  %s  " (int-to-string (eyebrowse--get 'current-slot)))
				      'face 'mode-line-eyebrowse
				      )
			 )
		       )
		
		(:eval
		 (when (eql buffer-read-only t)
		   (propertize
		    (format "   %s   " (all-the-icons-octicon "lock" :v-adjust -0.05))
		    'face `(
			    :foreground "#f1eff8"
			    :background "#666699"
			    :box(:line-width 8 :color "#666699")
			    :family ,(all-the-icons-octicon-family)
			    )
		    )
		   )
		 )

		(:eval
		 (if (string-match "\<.*\>" (buffer-name))
		     (concat
		      (propertize (format " %s/" (substring (eval(match-string 0)) 2 ))
				  'face 'mode-line-dir-name
				  )
		      (propertize (format "%s " (substring (buffer-name) 0 (match-beginning 0))) 'face 'mode-line-buffer-name)
		      )
		   
		   (propertize " %b " 'face 'mode-line-buffer-name)
		   )
		 )
		(:eval
		 (if (buffer-modified-p)
		     (propertize (format " %s " (all-the-icons-faicon "floppy-o" :v-adjust -0.05))
				 'face '(:background "#666699" :foreground "#f1eff8" :box(:line-width 8 :color "#666699"))
				 )
		   nil
		     )
		   )

		(:propertize " %m ")
		(:propertize " %l:%c " face (:foreground "#f1eff8" :weight light))

		(:propertize "    " face 'mode-line)
		
		(:eval (when (stringp vc-mode)
			 (propertize (format "%s %s" (all-the-icons-octicon "git-branch" :v-adjust -0.05) (replace-regexp-in-string "^ Git-" "" (eval vc-mode))))
			 )
		       )
		" "
		(:propertize (global-mode-string global-mode-string) face (:foreground "#f1eff8" :weight normal))
		)
	      )
