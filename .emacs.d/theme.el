(when (window-system)
  (set-frame-font "Input")
  (set-face-attribute 'default nil :family "Input" :height 140)
  (load-theme 'zerodark)
  (toggle-frame-maximized)
  (toggle-frame-fullscreen)
  )

(set-face-attribute 'helm-source-header nil
                    :height 1.0)
