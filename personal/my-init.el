;;; my-init.el --- customized settings

;;; Commentary:

;;; Code:


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Theme
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(disable-theme 'zenburn)
;(load-theme 'whiteboard)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Misc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key [remap other-window] 'ace-window)
(setq-default tab-width 4)
(set-language-environment "UTF-8")

(when (fboundp 'global-font-lock-mode) (global-font-lock-mode t))
(when (fboundp 'global-auto-revert-mode) (global-auto-revert-mode t))

(display-time)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Save session
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(desktop-save-mode 1)
(setq desktop-path (quote ("~/.emacs.d/"))
      desktop-restore-eager 20
      desktop-dirname "~/.emacs.d/")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; backup and auto-saves
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Enable backup files
(setq delete-old-versions t
      kept-old-versions 1
      kept-new-versions 3
      version-control t)
(setq backup-directory-alist '((".*" . "~/.emacs.d/backup")))

; Auto-saves
(defvar autosave-dir "~/.emacs.d/auto-saves/")
(make-directory autosave-dir t)
(defun auto-save-file-name-p (filename)
  (string-match "^#.*#$" (file-name-nondirectory filename)))
(defun make-auto-save-file-name ()
  (concat autosave-dir
          (if buffer-file-name
              (concat "#" (file-name-nondirectory buffer-file-name) "#")
            (expand-file-name
             (concat "#%" (buffer-name) "#")))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Auto-run / hooks
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Fix sth. for shell at Linux
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; for window
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun platform-special ()
  (cond ((eq system-type 'windows-nt)
         (message "load windows-nt special conf")
         (require 'my-win))))
(platform-special)

(provide 'my-init)

;;; my-init.el ends here
