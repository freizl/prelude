(setq browse-url-browser-function 'browse-url-generic)
(setq haskell-process-path-cabal "~/.cabal/bin/cabal")
(global-set-key [remap other-window] 'ace-window)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-url-generic-program
   "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome")
 '(erc-nick "haisheng")
 '(erc-notifications-mode t)
 '(flycheck-javascript-jshint-executable "~/node-tools/node_modules/jshint/bin/jshint")
 '(flycheck-jshintrc "~/.jshintrc")
 '(httpd-port 13579)
 '(js2-basic-offset 2)
 '(magit-branch-arguments (quote ("")))
 '(ns-alternate-modifier (quote super))
 '(ns-command-modifier (quote meta))
 '(org-agenda-files (quote ("~/daily/")))
 '(prelude-user-init-file "~/git/prelude/personal/"))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; ERC Slack
;;;
(defun start-slack ()
  "Connect to IRC."
  (interactive)
  (when (y-or-n-p "Do you want to start Slack? ")
    (erc-tls :server "x.irc.slack.com" :port 6667 :nick "haisheng.wu" :password "")))

(setq erc-autojoin-channels-alist '((".*\\.freenode.net" "#haskell-cn")
                                    ))

;;; Save session
;;;
(desktop-save-mode 1)
(setq desktop-path (quote ("~/.emacs.d/"))
      desktop-restore-eager 20
      desktop-dirname "$HOME/bs/")


;;; Org Mode
;;;
(setq org-todo-keywords
      '((sequence "TODO(t)" "INPROGRESS(i)" "CODEREVIEW(r)" "|" "DONE(d)")
        (sequence "|" "CANCELED(c)")))

;;; Tern
;;;
;;; (setq tern-ac-on-dot t)
(add-to-list 'load-path "$HOME/Downloads/github.com/tern/emacs/")
(autoload 'tern-mode "tern.el" nil t)
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))
