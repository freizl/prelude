;;; prelude-js2.el --- Emacs Prelude: js2-mode configuration.
;;
;; Author: Haisheng,Wu
;; Version: 1.0.0
;; Keywords: convenience
;; Package-Requires: ((prelude-programming "1.0.0"))

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Some basic configuration for js2-mode.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

(require 'prelude-programming)

(eval-after-load 'js2-mode
  '(progn
     (defun prelude-js2-mode-defaults ()
       (setq js2-basic-offset 3)
       (setq js2-cleanup-whitespace t)
       (setq js2-enter-indents-newline nil)
       (setq js2-indent-on-enter-key nil)
       (setq js2-pretty-multiline-declarations t)
       (require 'js2-imenu-extras)
       (js2-imenu-extras-setup)
       (local-set-key [f8] 'hs-toggle-hiding))

     (setq prelude-js2-mode-hook 'prelude-js2-mode-defaults)

     (add-hook 'js2-mode-hook (lambda () (hs-minor-mode t)))
     (add-hook 'js2-mode-hook (lambda () (run-hooks 'prelude-js2-mode-hook)))))

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(provide 'prelude-js2)

;;; prelude-js2.el ends here
