(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-url-generic-program
   "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome")
 '(erc-nick "haisheng")
 '(erc-notifications-mode t)
 '(httpd-port 13579)
 '(js2-basic-offset 2)
 '(magit-branch-arguments (quote ("")))
 '(magit-push-always-verify nil)
 '(ns-alternate-modifier (quote super))
 '(ns-command-modifier (quote meta))
 '(org-agenda-files (list "~/path/to/dir/"))
 '(org-html-doctype "html5")
 '(org-bullets-bullet-list (quote ("🐭" "🐮" "🐯" "🐰" "🐲" "🐍" "🐴" "🐑" "🙉" "🐔" "🐶" "🐷")))
 '(org-html-html5-fancy t)
 '(prelude-user-init-file "~/git/prelude/personal/")
 '(projectile-enable-caching t)
 '(projectile-project-root-files-functions
   (quote
    (projectile-root-top-down projectile-root-bottom-up projectile-root-top-down-recurring))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq magit-auto-revert-mode nil)

(add-to-list 'auto-mode-alist '("\\.purs$" . haskell-mode))

(setq browse-url-browser-function 'browse-url-generic)
(setq haskell-process-path-cabal "~/.cabal/bin/cabal")
(global-set-key [remap other-window] 'ace-window)


;;; Save session
;;;
(desktop-save-mode 1)
(setq desktop-path (quote ("~/.emacs.d/"))
      desktop-restore-eager 20
      desktop-dirname "~/.emacs.d/")
