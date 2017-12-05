(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b447129c5efd45c7dcfaaf99b94caf479637ff205b4e5b566efc7ce5496272ab" "df258df60e7e87aa3f3b0ba727f54d6c968036e23ac60673b8375525e5ea9c28" "2f9216992371bcc9bc26bca11698d9c778ef4609ad94f86e4810607bf0fde82e" "355e1c0eb7cd20794e983b4c6f5c0c978a85b159d6aadb2fae15faa25fb344e5" "4137af91ea70f2b3ba0f5dee69899f2c81be463c54d931179d2e5038c4947d36" "2affeafce8e8bf5803ccce901f779f95d0b0ac122145efee753baa4af4d73e26" "873d8b58357aecbeedd0acdda2aca3f3f5b92ceb4a5dbe9384a4837fe1e34aa3" default)))
 '(package-selected-packages
   (quote
    (react-snippets yasnippet ac-anaconda emmet-mode smartparens ag gotham-theme helm projectile neotree markdown-mode magit flycheck auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(require 'cl)
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(defvar alsw/mypackages '(
			  ag
			  auto-complete
			  flycheck
			  magit
			  markdown-mode
			  neotree
			  projectile
			  helm
			  helm-projectile
			  web-mode
			  js2-mode
			  rjsx-mode
			  popup
			  which-key
			  bind-key
			  popwin
			  json-mode
			  autothemer
			  rainbow-mode
			  gotham-theme
			  emmet-mode			  
			  yasnippet
			  react-snippets
			  ))

(defun alsw/packages-installed-p ()
  (loop for pkg in alsw/mypackages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (alsw/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg alsw/mypackages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(require 'server)
(unless (server-running-p)
  (server-start))

(setq
 initial-scratch-message ""
 inhibit-startup-message t
 make-backup-files nil
 auto-save-default nil
 indent-tabs-mode nil
 inhibit-splash-screen t
 tab-width 2
 version-control t
 coding-system-for-read 'utf-8
 coding-system-for-write 'utf-8
 default-fill-column 80
 js2-basic-offset 2
 )

(delete-selection-mode t)
(blink-cursor-mode t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(tooltip-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
(global-linum-mode 1)
(setq linum-format "%4d \u2502 ")

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(setq ac-disable-faces nil)


(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq-default neo-smart-open t)
(setq-default neo-dont-be-alone t)
(add-hook 'neo-change-root-hook
          (lambda () (neo-buffer--with-resizable-window
		      (let ((fit-window-to-buffer-horizontally t))
			(fit-window-to-buffer)))))


(global-flycheck-mode)

(require 'helm)
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(setq helm-autoresize-max-height 0)
(setq helm-autoresize-min-height 20)
(helm-autoresize-mode 1)
(helm-mode 1)

(require 'popwin)
(popwin-mode 1)

(which-key-mode 1)

(require 'emmet-mode)
(require 'web-mode)
(setq js2-basic-offset 2)
(setq web-mode-enable-css-colorization t)
(setq web-mode-enable-block-face t)
(setq web-mode-enable-part-face t)

(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode. Adjust indents"
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-attr-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq css-indent-offset 2)
  (rainbow-mode 1)
  )
(add-hook 'web-mode-hook  'my-web-mode-hook)

(require 'kaolin-themes)

(load-theme 'kaolin-ocean)

(require 'react-snippets)

(defun my-rjsx-mode-hook ()
  (emmet-mode 1)
  (smartparens-mode 1)
  (setq js2-basic-offset 2)
  (auto-complete-mode 1)
  (add-to-list 'ac-sources 'ac-source-filename)
)

(add-hook 'rjsx-mode-hook 'my-rjsx-mode-hook)

(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))

(defun my-python-mode-hook ()
  (auto-fill-mode 1)
  (set-fill-column 79)
  )
(add-hook 'python-mode-hook 'my-python-mode-hook)

(when (window-system)
  (set-default-font "Fira Code"))
