(defface neo-tree-buffer
  '((t
     :background "#1a1b2b"
     :foreground "#f1eff8"
     ))
  "Neotree dark background"
  :group 'basic-faces
  )

(set-face-attribute 'neo-root-dir-face nil
		    :background "#1a1b2b"
		    :foreground "#55efc4"
		    :height 120
		    )

(set-face-attribute 'neo-dir-link-face nil
		    :foreground "#74b9ff"
		    )

(set-face-attribute 'neo-vc-ignored-face nil
		    :foreground "#53495d"
		    )

(set-face-attribute 'neo-vc-added-face nil
		    :background "#55efc4"
		    :foreground "#1a1b2b"
		    )

(set-face-attribute 'neo-vc-unregistered-face nil
		    :foreground "#55efc4"
		    )

(set-face-attribute 'neo-vc-removed-face nil
		    :background "#ff79c6"
		    :foreground "#1a1b2b"
		    )

(set-face-attribute 'neo-vc-edited-face nil
		    :background "#efe4a1"
		    :foreground "#1a1b2b"
		    )

(set-face-attribute 'neo-tree-buffer nil
		    :font "Roboto Mono for Powerline"
		    :height 120
		    :weight 'normal
		    )

(set-face-attribute 'fringe nil
		    :background nil
		    )

(global-set-key [f8] 'neotree-toggle)

(setq
 neo-theme (if (display-graphic-p) 'icons 'arrow)
 neo-window-width 30
 neo-mode-line-type 'none
 neo-show-hidden-files nil
 neo-show-updir-line nil
 neo-window-fixed-size nil
 neo-vc-integration '(face)
 projectile-switch-project-action 'neotree-projectile-action
 neo-smart-open t
 neo-dont-be-alone t
 neo-hidden-regexp-list '(
			  "^\\.git$"
			  "^venv$"
			  "^node_modules$"
			  "^package-lock\\.json$"
			  )
 )

(add-hook 'neotree-mode-hook
	  (lambda()
	    (buffer-face-set 'neo-tree-buffer)
	    (setq header-line-format
		  '(
		    (:eval
		     (concat
		      (propertize
		       (format " %s " (all-the-icons-octicon "repo" :v-adjust -0.05) )
		       )
		      (propertize
		       (neo-path--get-working-dir)
		       'face '(:height 120)
		       )
		      )
		     )
		    )
		  )
	    (set-face-attribute 'header-line nil
				:background "#292a44"
				:foreground "#55efc4"
				:box '(:line-width 8 :color "#292a44")
				)
	    )
	  )


