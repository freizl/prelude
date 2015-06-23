(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(erc-nick "haisheng")
 '(erc-notifications-mode t)
 '(httpd-port 13579)
 '(org-agenda-files (quote ("~/bs/dev/working-org/"))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;; Miscs
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome")
(setq haskell-process-path-cabal "~/.cabal/bin/cabal")
(global-set-key [remap other-window] 'ace-window)


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


