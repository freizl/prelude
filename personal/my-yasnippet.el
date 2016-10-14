;;; my-yasnippet.el --- yasnippet config

;;; Commentary:

;;; Code:

(prelude-require-packages '(yasnippet))

(defvar prelude-snippets-dir (expand-file-name "snippets" prelude-dir)
  "This folder houses additional yasnippet bundles distributed with Prelude.")
(defvar prelude-personal-snippets-dir (expand-file-name "snippets" prelude-personal-dir)
  "This folder houses additional yasnippet bundles added by the users.")

;; load yasnippet
(require 'yasnippet)
(setq yas-prompt-functions '(yas-dropdown-prompt yas-ido-prompt))
(add-to-list 'yas-snippet-dirs prelude-snippets-dir)
(add-to-list 'yas-snippet-dirs prelude-personal-snippets-dir)
(yas-global-mode 1)

;; term-mode does not play well with yasnippet
(add-hook 'term-mode-hook (lambda () (yas-minor-mode -1)))

(provide 'my-yasnippet)

;;; my-yasnippet.el ends here
