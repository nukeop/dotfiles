(when (window-system)
  (set-frame-font "FantasqueSansMono Nerd Font Mono")
  (set-face-attribute 'default nil :family "FantasqueSansMono Nerd Font Mono" :height 140)
  (load-theme 'challenger-deep)
  (toggle-frame-maximized)
  ;;(toggle-frame-fullscreen)
  )

(set-face-attribute 'helm-source-header nil
                    :height 1.0)
