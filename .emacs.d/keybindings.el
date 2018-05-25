;; Keyboard bindings
(global-set-key (kbd "C-:") 'ac-complete-with-helm)
(global-set-key (kbd "C-c r") 'vr/replace)
(global-set-key (kbd "C-c q") 'vr/query-replace)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "C-x o") 'ace-window)
(global-set-key (kbd "C-x p p") 'helm-projectile)
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
(global-set-key [f9] 'eval-buffer)

;; Custom functions
(global-set-key (kbd "C-S-d") 'duplicate-line)

;;Mouse bindings
(unbind-key (kbd "<mouse-2>"))
