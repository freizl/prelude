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
 '(display-time-mode t)
 '(erc-nick "haisheng")
 '(erc-notifications-mode t)
 '(flycheck-scss-lint-executable "/usr/local/bin/scss-lint")
 '(global-hi-lock-mode 1)
 '(global-linum-mode t)
 '(haskell-process-path-cabal "~/.cabal/bin/cabal")
 '(httpd-port 13579)
 '(js2-basic-offset 2)
 '(json-reformat:indent-width 2)
 '(json-reformat:pretty-string\? t)
 '(kill-whole-line t)
 '(magit-auto-revert-mode nil)
 '(magit-branch-arguments (quote ("")))
 '(magit-push-always-verify nil)
 '(next-line-add-newlines t)
 '(ns-alternate-modifier (quote super))
 '(ns-command-modifier (quote meta))
 '(org-agenda-files
   (list "~/okta/Box Sync/org" "~/okta/Box Sync/org/sharings" "~/okta/Box Sync/org/data-models"))
 '(org-babel-load-languages
   (quote
    ((emacs-lisp . t)
     (haskell . t)
     (plantuml . t)
     (js . t)
     (dot . t))))
 '(org-bullets-bullet-list (quote ("🐭" "🐮" "🐯" "🐰" "🐲" "🐍" "🐴" "🐑" "🙉" "🐔" "🐶" "🐷")))
 '(org-confirm-babel-evaluate nil)
 '(org-hide-block-startup t)
 '(org-html-doctype "html5")
 '(org-html-html5-fancy t)
 '(org-plantuml-jar-path (expand-file-name "plantuml.jar" prelude-personal-dir))
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
