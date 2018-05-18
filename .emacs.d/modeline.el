;; Mode line settings

(defface mode-base
  '((t
     :background "#2c3e50"
     :box (:line-width 8 :color "#2c3e50")
     ))
  "Basic mode line face"
  :group 'basic-faces
  )

(defface mode-green
  '((t
     :foreground "#ecf0f1"
     :background "#27ae60"
     :box (:line-width 8 :color "#27ae60")
     ))
  "Green mode segment"
  :group 'basic-faces
  )

(defface mode-red
  '((t
     :foreground "#ecf0f1"
     :background "#c0392b"
     :box (:line-width 8 :color "#c0392b")
     ))
  "Red mode segment"
  :group 'basic-faces
  )

(defface mode-blue
  '((t
     :foreground "#ecf0f1"
     :background "#2980b9"
     :box (:line-width 8 :color "#2980b9")
     ))
  "Blue mode segment"
  :group 'basic-faces
  )

(defface mode-black
  '((t
     :foreground "#ecf0f1"
     :background "#2c3e50"
     :box (:line-width 8 :color "#2c3e50")
     ))
  "Black mode segment"
  :group 'basic-faces
  )

(defface mode-white
  '((t
     :foreground "#2c3e50"
     :background "#ecf0f1"
     :box (:line-width 8 :color "#ecf0f1")
     ))
  "White mode segment"
  :group 'basic-faces
  )

(set-face-attribute 'mode-line nil
		    :foreground "#ecf0f1"
		    :background "#2c3e50"
		    :box '(:line-width 8 :color "#2c3e50")
		    )

(set-face-attribute 'mode-line-inactive nil
		    :foreground "#95a5a6"
		    :background "#2c3e50"
		    :box '(:line-width 8 :color "#2c3e50")
		    )

(defface mode-line-buffer-name
  '((t
     :inherit 'mode-black
     ))
  "Buffer name face"
  :group 'basic-faces
  )

(defface mode-line-dir-name
  '((t
     :inherit 'mode-black
     :foreground "#2980b9"
     ))
  "Directory name in mode line"
  :group 'basic-faces
  )

(declare-function eyebrowse--get 'eyebrowse)

(defun custom-modeline-time ()
  (let* ((hour (string-to-number (format-time-string "%I")))
         (icon (all-the-icons-wicon (format "time-%s" hour) :height 1.3 :v-adjust 0.0)))
    (concat
     (propertize (format-time-string " %H:%M ") 'face `(:height 0.9))
     (propertize (format "%s " icon) 'face `(:height 1.0 :family ,(all-the-icons-wicon-family)) 'display '(raise -0.0)))))

(defun custom-modeline-flycheck-status ()
  (let* ((text (pcase flycheck-last-status-change
                (`finished (if flycheck-current-errors
                               (let ((count (let-alist (flycheck-count-errors flycheck-current-errors)
                                              (+ (or .warning 0) (or .error 0)))))
                                 (format "✖ %s Issue%s" count (unless (eq 1 count) "s")))
                             "✔ No Issues"))
                (`running     "⟲ Running")
                (`no-checker  "⚠ No Checker")
                (`not-checked "✖ Disabled")
                (`errored     "⚠ Error")
                (`interrupted "⛔ Interrupted")
                (`suspicious  ""))))
     (propertize text
                 'help-echo "Show Flycheck Errors"
                 'mouse-face '(:box 1)
                 'local-map (make-mode-line-mouse-map
                             'mouse-1 (lambda () (interactive) (flycheck-list-errors))))))

(defun mode-icon ()
  (ignore-errors
    (propertize (format " %s" (all-the-icons-icon-for-mode major-mode :v-adjust -0.05)) 'face '(:family "all-the-icons"))
    )
  )

(setq-default mode-line-format
	      '(
		(:eval
		 (let ((mode " %m "))
		   (if (eql buffer-read-only t)
		       (propertize (concat (mode-icon) mode) 'face 'mode-blue)
		     (if (buffer-modified-p)
			 (propertize (concat (mode-icon) mode) 'face 'mode-red)
		       (propertize (concat (mode-icon) mode) 'face 'mode-green)
		       )
		     )
		   )
		 )
		
		(:eval (when (and (bound-and-true-p eyebrowse-mode)
				  (< 1 (length (eyebrowse--get 'window-configs))))
			 (propertize  (format "  %s  " (int-to-string (eyebrowse--get 'current-slot)))
				      'face 'mode-blue
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
		   
		   (propertize " %b ")
		   )
		 )
		
		(:propertize " %l:%c ")
		
		(:eval (when (stringp vc-mode)
			 (propertize (format "%s %s" (all-the-icons-octicon "git-branch" :v-adjust -0.05) (replace-regexp-in-string "^ Git[-:]" "" (eval vc-mode))))
			 )
		       )
		" "
		(:eval (custom-modeline-flycheck-status))
		" "
		(:eval (custom-modeline-time))
		
		)
	      )
