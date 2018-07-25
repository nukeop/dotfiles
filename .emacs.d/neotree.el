(defface neo-tree-buffer
  '((t
     :background "#22252c"
     :foreground "#ccd4e3"
     ))
  "Neotree dark background"
  :group 'basic-faces
  )

(set-face-attribute 'neo-root-dir-face nil
		    :background "#282c34"
		    :foreground "#61afef"
        :box '(:line-width 8 :color "#282c34")
		    :height 120
		    :weight 'bold
		    )

(set-face-attribute 'neo-dir-link-face nil
		    :foreground "#61afef"
		    )

(set-face-attribute 'neo-vc-ignored-face nil
		    :foreground "#64446d"
		    )

(set-face-attribute 'neo-vc-added-face nil
		    :background "#284437"
		    :foreground "#1e8967"
		    )

(set-face-attribute 'neo-vc-unregistered-face nil
		    :foreground "#1e8967"
		    )

(set-face-attribute 'neo-vc-removed-face nil
		    :background "#583333"
		    :foreground "#b33c49"
		    )

(set-face-attribute 'neo-vc-edited-face nil
		    :background "#da8548"
		    :foreground "#1a1b2b"
		    )

(set-face-attribute 'neo-tree-buffer nil
		    :font "Input"
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
			                    )
 )

(add-hook 'neotree-mode-hook
	  (lambda()
	    (buffer-face-set 'neo-tree-buffer)
	    )
	  )


