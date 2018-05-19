(defun custom-modeline-time ()
  (let* ((hour (string-to-number (format-time-string "%I")))
         (icon (all-the-icons-wicon (format "time-%s" hour) :height 1.3 :v-adjust 0.0)))
    (propertize
     (concat
      (propertize (format-time-string " %H:%M ") 'face `(:height 0.9))
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
				  (format " ✖ %s Issue%s " count (unless (eq 1 count) "s")))
			      " ✔ No Issues "))
		 (`running     " ⌛ Running ")
		 (`no-checker  " ⚠ No Checker ")
		 (`not-checked " ✖ Disabled ")
		 (`errored     " ⚠ Error ")
		 (`interrupted " ⛔ Interrupted ")
		 (`suspicious  ""))))
    (propertize text
		'help-echo "Show Flycheck Errors"
		'mouse-face '(:box 1)
		'local-map (make-mode-line-mouse-map
			    'mouse-1 (lambda () (interactive) (flycheck-list-errors))))))

(declare-function eyebrowse--get 'eyebrowse)

(defun mode-icon ()
  (propertize
   (format " %s" (all-the-icons-icon-for-mode major-mode :v-adjust 0.05))
   'face '(:family "all-the-icons-alltheicon"))
  )
