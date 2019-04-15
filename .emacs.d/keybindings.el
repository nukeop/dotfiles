;; Keyboard bindings
(define-key projectile-mode-map [remap projectile-find-file-dwim]
  #'helm-projectile-find-file-dwim)
(define-key projectile-mode-map [remap projectile-find-file]
  #'helm-projectile-find-file-dwim)
(define-key projectile-mode-map [remap projectile-switch-project]
  #'helm-projectile)

(global-set-key (kbd "C-:") 'ac-complete-with-helm)
(global-set-key (kbd "C-c r") 'vr/replace)
(global-set-key (kbd "C-c q") 'vr/query-replace)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "C-x o") 'ace-window)
(global-set-key (kbd "C-x p p") 'helm-projectile)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-v") 'yank)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "M-[") 'previous-buffer)
(global-set-key (kbd "M-]") 'next-buffer)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-q") 'delete-window)
(global-set-key (kbd "M--") 'split-window-below)
(global-set-key (kbd "M-|") 'split-window-right)
(global-set-key (kbd "M-<left>") 'windmove-left)
(global-set-key (kbd "M-<right>") 'windmove-right)
(global-set-key (kbd "M-<up>") 'windmove-up)
(global-set-key (kbd "M-<down>") 'windmove-down)
(global-set-key (kbd "s-1") 'eyebrowse-switch-to-window-config-1)
(global-set-key (kbd "s-2") 'eyebrowse-switch-to-window-config-2)
(global-set-key (kbd "s-3") 'eyebrowse-switch-to-window-config-3)
(global-set-key (kbd "s-4") 'eyebrowse-switch-to-window-config-4)
(global-set-key (kbd "s-5") 'eyebrowse-switch-to-window-config-5)
(global-set-key (kbd "s-6") 'eyebrowse-switch-to-window-config-6)
(global-set-key (kbd "s-7") 'eyebrowse-switch-to-window-config-7)
(global-set-key (kbd "s-8") 'eyebrowse-switch-to-window-config-8)
(global-set-key (kbd "s-9") 'eyebrowse-switch-to-window-config-9)
(global-set-key (kbd "s-0") 'eyebrowse-switch-to-window-config-0)
(global-set-key (kbd "s-a") 'eyebrowse-prev-window-config)
(global-set-key (kbd "s-d") 'eyebrowse-next-window-config)
(global-set-key [f9] 'eval-buffer)


;; Custom functions
(global-set-key (kbd "C-S-d") 'duplicate-line)
(global-set-key (kbd "C-S-e") 'eslint-fix)


;;Mouse bindings
(unbind-key (kbd "<mouse-2>"))
