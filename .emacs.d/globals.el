(unless (server-running-p)
  (server-start))

(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.lk12\\'". lua-mode))

(setq
 ac-disable-faces nil
 auto-save-default nil
 blink-cursor-mode 0
 coding-system-for-read 'utf-8
 coding-system-for-write 'utf-8
 column-number-mode t
 cursor-in-non-selected-windows nil
 custom-safe-themes t
 default-fill-column 80
 display-time-default-load-average nil
 display-time-format "%H:%M"
 helm-autoresize-max-height 0
 helm-autoresize-min-height 20
 indent-tabs-mode nil
 inhibit-splash-screen t
 inhibit-startup-message t
 initial-scratch-message ""
 js-indent-level 2
 js2-basic-offset 2
 linum-format "%4d \u2502 "
 make-backup-files nil
 projectile-enable-caching t
 scroll-conservatively 10
 scroll-margin 10
 sgml-attribute-offset 1
 sgml-basic-offset 2
 tab-width 2
 version-control t
 web-mode-enable-block-face t
 web-mode-enable-css-colorization t
 web-mode-enable-current-element-highlight t
 web-mode-enable-part-face t
 window-combination-resize t
 x-stretch-cursor t
 )

(ac-config-default)
(blink-cursor-mode t)
(delete-selection-mode t)
(display-time-mode 1)
(eyebrowse-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(global-flycheck-mode)
(global-hl-line-mode 1)
(global-linum-mode 1)
(global-wakatime-mode)
(helm-autoresize-mode 1)
(helm-mode 1)
(menu-bar-mode -1)
(popwin-mode 1)
(projectile-mode 1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(which-key-mode 1)
(yas-global-mode 1)
