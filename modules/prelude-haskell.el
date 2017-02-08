;;; prelude-haskell.el --- Emacs Prelude: Nice config for Haskell programming.
;;
;; Copyright © 2011-2016 Bozhidar Batsov
;;
;; Author: Bozhidar Batsov <bozhidar@batsov.com>
;; URL: https://github.com/bbatsov/prelude
;; Version: 1.0.0
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Nice config for Haskell programming.

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

(require 'hs-lint)
(require 'prelude-programming)
(require 'haskell-interactive-mode)
(require 'haskell-process)

(prelude-require-packages '(haskell-mode))

(eval-after-load 'haskell-mode
  '(progn
     (defun prelude-haskell-mode-defaults ()
       (subword-mode +1)
       (setq haskell-process-suggest-remove-import-lines t)
       (setq haskell-compile-cabal-build-command "stack build")
       (define-key haskell-mode-map (kbd "C-c C-c") 'haskell-compile)
       (define-key haskell-mode-map (kbd "M-.") 'haskell-mode-tag-find)
       (turn-on-haskell-doc-mode)
       (turn-on-haskell-decl-scan)
       (turn-on-haskell-indentation)
       (flyspell-prog-mode)
       (interactive-haskell-mode +1))

     (setq prelude-haskell-mode-hook 'prelude-haskell-mode-defaults)

     (add-hook 'haskell-mode-hook (lambda ()
                                    (run-hooks 'prelude-haskell-mode-hook)))))

(provide 'prelude-haskell)

;;; prelude-haskell.el ends here
