(require 'cl)
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))
    (package-initialize)
    )
  )

(defvar mypackages '(
		     ac-helm
		     ac-js2
		     ace-window
		     ag
		     all-the-icons
		     all-the-icons-dired
		     anaconda-mode
		     auto-complete
		     autothemer
		     bind-key
		     emmet-mode
		     eyebrowse
		     flycheck
		     gotham-theme
		     helm
		     helm-projectile
		     js2-mode
		     json-mode
		     lua-mode
		     magit
		     markdown-mode
		     neotree
		     popup
		     popwin
		     projectile
		     rainbow-delimiters
		     rainbow-mode
		     rebecca-theme
		     restclient
		     rjsx-mode
		     rust-mode
		     visual-regexp
		     wakatime-mode
		     web-mode
		     which-key
		     yasnippet
		     ))

(defun packages-installed-p ()
  (loop for pkg in mypackages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg mypackages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(require 'emmet-mode)
(require 'helm)
(require 'helm-config)
(require 'neotree)
(require 'popwin)
(require 'rebecca-theme)
(autoload 'rjsx-mode "rjsx-mode")
(require 'server)
(autoload 'vc-git-root "vc-git")
