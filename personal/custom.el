;;; custom.el --- customized settings

;;; Commentary:

;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(appt-display-duration 20)
 '(blink-cursor-mode nil)
 '(browse-url-generic-program
   "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome")
 '(calendar-chinese-celestial-stem ["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"])
 '(calendar-chinese-terrestrial-branch ["子" "丑" "寅" "卯" "辰" "巳" "午" "未" "申" "酉" "戌" "亥"])
 '(chinese-calendar-celestial-stem ["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"])
 '(chinese-calendar-terrestrial-branch ["子" "丑" "寅" "卯" "辰" "巳" "午" "未" "申" "酉" "戌" "亥"])
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("f5512c02e0a6887e987a816918b7a684d558716262ac7ee2dd0437ab913eaec6" "9d91458c4ad7c74cf946bd97ad085c0f6a40c370ac0a1cbeb2e3879f15b40553" "5dc0ae2d193460de979a463b907b4b2c6d2c9c4657b2e9e66b8898d2592e3de5" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" default)))
 '(display-time-mode t)
 '(erc-nick "haisheng")
 '(erc-notifications-mode t)
 '(flycheck-scss-lint-executable "/usr/local/bin/scss-lint")
 '(global-hi-lock-mode 1)
 '(global-linum-mode nil)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-path-cabal "~/.cabal/bin/cabal")
 '(haskell-process-suggest-remove-import-lines t)
 '(httpd-port 13579)
 '(js2-basic-offset 2)
 '(js2-strict-trailing-comma-warning nil)
 '(json-reformat:indent-width 2)
 '(json-reformat:pretty-string\? t)
 '(kill-whole-line t)
 '(magit-auto-revert-mode nil)
 '(magit-branch-arguments (quote ("")))
 '(magit-push-always-verify nil)
 '(next-line-add-newlines t)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(ns-alternate-modifier (quote super))
 '(ns-command-modifier (quote meta))
 '(org-babel-load-languages
   (quote
    ((emacs-lisp . t)
     (haskell . t)
     (plantuml . t)
     (css . t)
     (awk . t)
     (python . t)
     (perl . t)
     (clojure . t)
     (js . t)
     (dot . t)
     (ditaa . t)
     (sh . t)
     (makefile . t))))
 '(org-bullets-bullet-list (quote ("🐭" "🐮" "🐯" "🐰" "🐲" "🐍" "🐴" "🐑" "🙉" "🐔" "🐶" "🐷")))
 '(org-confirm-babel-evaluate nil)
 '(org-default-notes-file "~/okta/Box Sync/org/notes.org")
 '(org-enforce-todo-checkbox-dependencies t)
 '(org-export-backends (quote (ascii beamer html latex md)))
 '(org-hide-block-startup t)
 '(org-html-doctype "html5" t)
 '(org-html-html5-fancy t)
 '(org-html-postamble nil)
 '(org-plantuml-jar-path (expand-file-name "plantuml.jar" prelude-personal-dir))
 '(org-use-speed-commands t)
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(prelude-flyspell nil)
 '(prelude-user-init-file (expand-file-name prelude-personal-dir))
 '(projectile-enable-caching t)
 '(projectile-project-root-files-functions
   (quote
    (projectile-root-top-down projectile-root-bottom-up projectile-root-top-down-recurring)))
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(winner-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; (setq browse-url-browser-function 'browse-url-generic)

(provide 'custom)

;;; custom.el ends here
