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
(set-face-attribute 'helm-M-x-key nil
                    :background "#22252c")
(set-face-attribute 'helm-selection nil
                    :background "#282c34"
                    :foreground "#ccd4e3")
(set-face-attribute 'linum nil
                    :background "#22252c")
(set-face-attribute 'minibuffer-prompt nil
                    :background "#64446d"
                    :foreground "#c678dd")
(set-face-attribute 'helm-buffer-file nil
                    :background "#22252c")
(set-face-attribute 'helm-non-file-buffer nil
                    :background "#22252c")
(set-face-attribute 'fringe nil
                    :background "#282c34"
                    :foreground "#282c34")
(set-face-attribute 'ac-candidate-face nil
                    :background "#24282f"
                    :foreground "#abb2bf")
(set-face-attribute 'ac-selection-face nil
                    :background "#1f5582"
                    :foreground "#ccd4e3")
(set-face-attribute 'ac-completion-face nil
                    :foreground "#687080")

(set-face-attribute 'popup-scroll-bar-background-face nil
                    :background "#24282f")
(set-face-attribute 'popup-scroll-bar-foreground-face nil
                    :background "#abb2bf")

(set-face-attribute 'which-key-note-face nil
                    :background "#22252c")
(set-face-attribute 'which-key-key-face nil
                    :background "#22252c")
(set-face-attribute 'which-key-group-description-face nil
                    :background "#22252c")
(set-face-attribute 'which-key-command-description-face nil
                    :background "#22252c")

(with-current-buffer " *Echo Area 0*" (face-remap-add-relative 'default '(:background "#22252c")))
(with-current-buffer " *Echo Area 1*" (face-remap-add-relative 'default '(:background "#22252c")))
