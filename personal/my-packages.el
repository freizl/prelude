(prelude-require-packages '(powerline auto-complete elm-mode skewer-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; markdown
(setq markdown-command "pandoc")

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
(global-set-key "\C-ca" 'org-agenda)
(add-hook 'org-mode-hook 'turn-on-auto-fill)

(setq org-todo-keyword-faces
      '(("BLOCK" . (:foreground "red" :weight bold))
        ("INPROGRESS" . (:foreground "#FF8800" :weight bold))
        ("CODEREVIEW" . (:foreground "#ddfade" :weight bold))
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
;; (skewer-setup)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Mustache
;;;
;(require 'mustache-mode)
