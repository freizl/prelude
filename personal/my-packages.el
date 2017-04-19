;;; my-package.el --- customize packages
;;; Code:
;;; Commentary:

(prelude-require-packages '(powerline
                            company-emoji
                            company-web
                            ;;company-tern
                            skewer-mode
                            flx-ido
                            org-bullets
                            ack
                            ag
                            which-key
                            imenu-anywhere
                            elm-mode
                            material-theme
                            plantuml-mode
                            ))
;; mustache-mode


(require 'which-key)
(which-key-mode)
(which-key-setup-side-window-right-bottom)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; company

(add-to-list 'company-backends 'company-emoji)
(add-to-list 'company-backends 'company-web-html)
(delete 'company-backends 'company-etags) ;;; FIXME to figure out better way to work with etags across projects.
;;(add-to-list 'company-backends 'company-tern)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; markdown
(setq markdown-command "~/.local/bin/pandoc -s")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; powerline
(require 'powerline)
(powerline-default-theme)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; FIXME: golden-ratio break buffer of `c-c h`
;(require 'golden-ratio)
;(golden-ratio-enable)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Elm mode
(require 'elm-mode)
(add-to-list 'auto-mode-alist '("\\.elm$" . elm-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ORG Mode
;;; (org-agenda-to-appt) for items that have date+timestamp
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-c\C-xg" 'org-feed-update-all) ;;; see section 9.3 RSS Feeds

(setq org-feed-alist '(("Morning Paper" "https://blog.acolyer.org/feed/" "~/.emacs.d/rss.org" "Morning Paper")
                       ;; ("Hueniverse" "https://hueniverse.com/feed/" "~/.emacs.d/rss.org" "Hueniverse")
                       ;; ("Leftover Salad comic" "http://www.leftoversalad.com/rss.php" "~/.emacs.d/rss.org" "Leftover Salad comic")
                       ("Philip Wadler blog" "http://wadler.blogspot.com/feeds/posts/default?alt=rss" "~/.emacs.d/rss.org" "Philip Wadler blog")
                       ("1Password Blog" "https://blog.agilebits.com/feed/" "~/.emacs.d/rss.org" "1Password Blog")
                       ))

(setenv "GRAPHVIZ_DOT" "/opt/local/bin/dot")
(setq org-html-doctype "html5")

(setq org-agenda-include-diary t)

(setq org-todo-keywords
      '((sequence "TODO(t)" "INVESTIGATING(v)" "INPROGRESS(i)" "CODEREVIEW(r)" "MERGING(m)" "BLOCK(b)")
        (sequence "|" "CANCELED(c)"  "DONE(d)")))

(setq org-todo-keyword-faces
      '(("BLOCK" . (:foreground "#F00000" :weight bold))
        ("INVESTIGATING" . (:foreground "#F1D10D"))
        ("INPROGRESS" . (:foreground "#007DC1" :weight bold))
        ("CODEREVIEW" . (:foreground "#A9E6FD"))
        ("MERGING" . (:foreground "#46B090"))
        ("CANCELED" . (:foreground "#A7A7A7" ))
        ))

(add-hook 'org-mode-hook 'turn-on-auto-fill)
(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; auto-complete =====> Company Mode
;;; (require 'auto-complete-config)
;;; (add-to-list 'ac-dictionary-directories (concat depends-dir "auto-complete/dict"))
;;; (ac-config-default)
;;; (setq ac-auto-start nil)
;;; (define-key ac-mode-map "\M-/" 'auto-complete)
;;; (add-to-list 'ac-modes 'haskell-mode)
;;; (add-to-list 'ac-modes 'js2-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; skewer mode
;;;

(skewer-setup)
(add-hook 'web-mode-hook 'skewer-html-mode)
(setq httpd-port 13579)
(httpd-start)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Mustache
;;;
;;; (require 'mustache-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ERC Slack
;;;
(defun start-slack ()
  "Connect to IRC."
  (interactive)
  (when (y-or-n-p "Do you want to start Slack? ")
    (erc-tls :server "x.irc.slack.com" :port 6667 :nick "haisheng.wu" :password "")))

;;; (setq erc-autojoin-channels-alist '((".*\\.freenode.net" "#haskell-cn")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Tern
;;;
;;; FIXME: - multiple tern processes have been started across project (messy)
;;;        - really hard to config one instance (without .port-file) (😿)
;;;        - maybe fock the tern.el and modify for simplicity??
;;;
;;;
;;; (add-to-list 'load-path (expand-file-name "tern/emacs" prelude-personal-dir))
;;; (autoload 'tern-mode "tern.el" nil t)
;;; (add-hook 'js2-mode-hook (lambda () (tern-mode t)))
;;;
;;; (eval-after-load 'tern
;;;   '(progn
;;;      (setq tern-command (append tern-command '("--no-port-file" "--port 63210" "--persistent")))
;;;      (setq tern-known-port 63210)
;;;      ))
;;;

(provide 'my-packages)

;;; my-packages.el ends here
