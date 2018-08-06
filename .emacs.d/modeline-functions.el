(defvar modeline-selected-window nil)
(defun record-selected-window (windows)
  (when (not (minibuffer-window-active-p (frame-selected-window)))
    (setq modeline-selected-window (selected-window))))
(add-function :before pre-redisplay-function #'record-selected-window)

(defun simple-mode-line-render (left right)
  "Return a string of `window-width' length containing LEFT, and RIGHT
 aligned respectively."
  (let* ((available-width (- (window-total-width) (length left) -6)))
    (format (format "%%s %%%ds " available-width) left right)))

(defun custom-modeline-time ()
  (let* ((hour (string-to-number (format-time-string "%I"))))
    (propertize
     (concat
      (propertize (format-time-string " %H:%M ") 'face `(:height 1.0))
      )
     'mouse-face '(:box 1 :color "#2c3e50")
     'help-echo '(format "%s" (format-time-string "%d %B %Y"))
     )
    ))

(defun custom-modeline-flycheck-status ()
  (let* ((text (pcase flycheck-last-status-change
		 (`finished (if flycheck-current-errors
				(let ((count (let-alist (flycheck-count-errors flycheck-current-errors)
					       (+ (or .warning 0) (or .error 0)))))
				  (format " %s %s " (all-the-icons-faicon "times" :v-adjust 0.025) count))
			      (format " %s " (all-the-icons-faicon "check" :v-adjust 0.025))))
		 (`running     (format " %s " (all-the-icons-faicon "hourglass-half" :v-adjust 0.025)))
		 (`no-checker  (format " %s No checker " (all-the-icons-faicon "exclamation-triangle" :v-adjust 0.025)))
		 (`not-checked (format " %s " (all-the-icons-faicon "times" :v-adjust 0.025)))
		 (`errored     (format " %s " (all-the-icons-faicon "exclamation-triangle" :v-adjust 0.025)))
		 (`interrupted (format " %s " (all-the-icons-faicon "ban" :v-adjust 0.025)))
		 (`suspicious  ""))))
    (propertize text
		            'help-echo "Show Flycheck Errors"
                'face '(:height 1.0)
		'mouse-face '(:box 1)
		'local-map (make-mode-line-mouse-map
			    'mouse-1 (lambda () (interactive) (flycheck-list-errors))))))

(declare-function eyebrowse--get 'eyebrowse)

(defun mode-icon ()
  (propertize
   (format " %s" (all-the-icons-icon-for-mode major-mode :v-adjust 0.05)) 'face '(:height 1.0))
  )
