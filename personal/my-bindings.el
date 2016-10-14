;;; my-bindings.el --- customized bindings

;;; Commentary:

;;; Code:


(global-set-key (kbd "C-h") 'backward-delete-char)
(global-set-key (kbd "C-_") 'help-command)

(global-set-key [f5] 'call-last-kbd-macro)
(global-set-key [f7] 'linum-mode)
(global-set-key [f9] 'toggle-truncate-lines)
(global-set-key [S-f9] 'longlines-mode)
(global-set-key "\M-]" 'other-window)
(global-set-key "\M-[" '(lambda () (interactive) (other-window -1)))
(global-set-key "\M-#" 'query-replace-regexp)

;(global-set-key [f5] 'occur)
;(global-set-key [f5] 'speedbar)
;(global-set-key [f6] 'browse-url)
;(global-set-key [S-f7] 'global-linum-mode)


(provide 'my-bindings)

;;; my-bindings.el ends here
