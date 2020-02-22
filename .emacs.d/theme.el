(when (window-system)
  (set-frame-font "Fira Code")
  (set-face-attribute 'default nil :family "Fira Code" :height 140)
  (load-theme 'challenger-deep)
  (toggle-frame-maximized)
  ;;(toggle-frame-fullscreen)
  )

(set-face-attribute 'helm-source-header nil
                    :height 1.0)
