(unless (server-running-p)
  (server-start))

(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.lk12\\'". lua-mode))
(add-to-list 'auto-mode-alist '("\\.rest\\'". restclient-mode))

(setq
 ac-disable-faces nil
 ac-auto-start 2
 auto-save-default nil
 coding-system-for-read 'utf-8
 coding-system-for-write 'utf-8
 column-number-mode t
 create-lockfiles nil
 css-indent-offset 2
 cursor-in-non-selected-windows nil
 custom-safe-themes t
 display-time-default-load-average nil
 display-time-format "%H:%M"
 fill-column 80
 frame-title-format '("%b @Emacs " emacs-version)
 fringe-mode 'left-only
 helm-autoresize-max-height 0
 helm-autoresize-min-height 20
 helm-display-header-line nil
 icon-title-format '("%b @Emacs " emacs-version)
 indent-tabs-mode nil
 indicate-buffer-boundaries t
 indicate-empty-lines t
 indicate-unused-lines t
 inhibit-splash-screen t
 inhibit-startup-message t
 initial-scratch-message ""
 js-indent-level 2
 js2-basic-offset 2
 linum-format "%4d  "
 make-backup-files nil
 projectile-enable-caching t
 racer-rust-src-path "~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/"
 save-place t
 save-place-file (concat user-emacs-directory "places")
 sgml-attribute-offset 0
 sgml-basic-offset 2
 tab-width 2
 uniquify-after-kill-buffer-p t
 uniquify-buffer-name-style 'forward
 uniquify-ignore-buffers-re "^\\*"
 uniquify-separator " • "
 uniquify-strip-common-suffix t
 version-control t
 visible-bell t
 web-mode-enable-block-face t
 web-mode-enable-css-colorization t
 web-mode-enable-current-element-highlight t
 web-mode-enable-part-face t
 window-combination-resize t
 x-stretch-cursor t
 )

(ac-config-default)
(blink-cursor-mode 0)
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
(mouse-wheel-mode 1)
(popwin-mode 1)
(projectile-mode 1)
(scroll-bar-mode -1)
(which-key-mode 1)
(tool-bar-mode -1)
(tooltip-mode -1)
(yas-global-mode 1)
