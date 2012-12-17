;(disable-theme 'zenburn)
;(load-theme 'whiteboard)

(setq prelude-flyspell nil)
(setq global-hi-lock-mode 1)
(set-scroll-bar-mode nil)
(setq-default tab-width 4)

(when (fboundp 'global-font-lock-mode) (global-font-lock-mode t))
(when (fboundp 'global-auto-revert-mode) (global-auto-revert-mode t))

(display-time)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; backup and auto-saves
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Enable backup files
;(setq delete-old-versions t
;      kept-old-versions 1
;      kept-new-versions 3
;      version-control t)
;(setq backup-directory-alist '((".*" . "~/.emacs.d/backup")))
                                  
; Auto-saves
;(defvar autosave-dir "~/.emacs.d/auto-saves/")
;(make-directory autosave-dir t)
;(defun auto-save-file-name-p (filename)
;  (string-match "^#.*#$" (file-name-nondirectory filename)))
;(defun make-auto-save-file-name ()
 ; (concat autosave-dir
 ;     (if buffer-file-name
 ;         (concat "#" (file-name-nondirectory buffer-file-name) "#")
  ;      (expand-file-name
  ;       (concat "#%" (buffer-name) "#")))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Chinese Calendar
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq chinese-calendar-celestial-stem
      ["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"]
      chinese-calendar-terrestrial-branch
      ["子" "丑" "寅" "卯" "辰" "巳" "午" "未" "申" "酉" "戌" "亥"])

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Auto-run / hooks
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Fix sth. for shell at Linux
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun platform-special ()
  (cond ((eq system-type 'windows-nt)
         (message "load windows-nt special conf")
         (require 'my-win))))

(platform-special)

