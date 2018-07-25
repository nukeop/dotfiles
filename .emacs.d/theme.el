(when (window-system)
  (set-frame-font "Input")
  (set-face-attribute 'default nil :family "Input" :height 140)
  (load-theme 'zerodark)
  (toggle-frame-maximized)
  (toggle-frame-fullscreen)
  )

(set-face-attribute 'helm-source-header nil
                    :height 1.0)
(set-face-attribute 'helm-source-header nil
                    :background "#22252c")
(set-face-attribute 'helm-selection nil
                    :background "#3e4451"
                    :foreground "#ccd4e3")
(set-face-attribute 'linum nil
                    :background "#22252c")
(set-face-attribute 'minibuffer-prompt nil
                    :background "#64446d"
                    :foreground "#c678dd")

(add-hook 'helm-minibuffer-set-up-hook (lambda()
                                         (face-remap-add-relative 'default
                                                                  '(:background "#282c34"))
                                         )
          )
