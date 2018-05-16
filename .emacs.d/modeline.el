;; Mode line settings

(custom-set-faces
 `(mode-line ((t (:background "#333353" :box (:line-width 8 :color "#333353") ))))
 '(mode-line-inactive ((t (:foreground "#666699" :box (:line-width 8 :color "#666699")))))
 )

(setq-default mode-line-format
      '(
        (:eval
         (when (eql buffer-read-only t)
           (propertize " READ ONLY " 'face
                       '(:foreground "#f1eff8" :background "#ff79c6" :weight bold :box(:line-width 8 :color "#ff79c6")))))
        (:eval
         (propertize " %b " 'face
                     (if (buffer-modified-p)
                         '(:background "#ff79c6" :foreground "#f1eff8" :weight bold :box(:line-width 8 :color "#ff79c6"))
                       '(:background "#663399" :foreground "#f1eff8" :weight normal :box(:line-width 8 :color "#663399")))))
        (:propertize " %m ")
        (:propertize (vc-mode vc-mode) face (:weight normal))
        " "
        (:propertize " %l:%c " face (:foreground "#f1eff8" :weight light))
        " "
        (:propertize (global-mode-string global-mode-string) face (:foreground "#f1eff8" :weight normal))
        )
      )
