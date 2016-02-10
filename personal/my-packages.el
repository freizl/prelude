;;; package --- summary
;;; Code:
;;; Commentary:
(prelude-require-packages '(powerline auto-complete skewer-mode flx-ido org-bullets ack ag))
;; elm-mode mustache-mode

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; markdown
(setq markdown-command "~/.cabal/bin/pandoc -s")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; powerline
(require 'powerline)
(powerline-default-theme)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; FIXME: golden-ratio break buffer of `c-c h`
;(require 'golden-ratio)
;(golden-ratio-enable)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Elm mode
;; (require 'elm-mode)
;; (add-to-list 'auto-mode-alist '("\\.elm$" . elm-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ORG Mode
;;; install org-bullets
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq org-todo-keywords
      '((sequence "TODO(t)" "BLOCK(b)")
        (sequence "|" "INVESTIGATING(i)" "INPROGRESS(p)" "CODEREVIEW(r)" "MERGING(m)")
        (sequence "|" "CANCELED(c)"  "DONE(d)")))

(global-set-key "\C-ca" 'org-agenda)
(add-hook 'org-mode-hook 'turn-on-auto-fill)

(setq org-todo-keyword-faces
      '(("BLOCK" . (:foreground "#F00000" :weight bold))
        ("INVESTIGATING" . (:foreground "#F1D10D"))
        ("INPROGRESS" . (:foreground "#007DC1" :weight bold))
        ("CODEREVIEW" . (:foreground "#A9E6FD"))
        ("MERGING" . (:foreground "#46B090"))
        ("CANCELED" . (:foreground "#A7A7A7" ))
        ))

(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)   ; turn off logging
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))

(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; auto-complete
(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories (concat depends-dir "auto-complete/dict"))
(ac-config-default)
(setq ac-auto-start nil)
(define-key ac-mode-map "\M-/" 'auto-complete)
(add-to-list 'ac-modes 'haskell-mode)
(add-to-list 'ac-modes 'js2-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; yas-snippet
;(delete "~/.emacs.d/snippets" yas-snippet-dirs)
(setq yas-prompt-functions '(yas-dropdown-prompt yas-ido-prompt))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; skewer mode
;;;
(skewer-setup)
(add-hook 'web-mode-hook 'skewer-html-mode)
(setq httpd-port 13579)

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

(setq erc-autojoin-channels-alist '((".*\\.freenode.net" "#haskell-cn")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Tern
;;;
;;; (setq tern-ac-on-dot t)
(add-to-list 'load-path "~/Downloads/github.com/tern/emacs/")
(autoload 'tern-mode "tern.el" nil t)
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))


(provide 'my-packages)
;;; my-packages.el ends here
