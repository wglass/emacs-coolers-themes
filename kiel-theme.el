;;; kiel-theme.el --- Color pallete used in the keil docs  -*- lexical-binding: t; -*-

;; Copyright (C) 2016  William Glass

;; Author: William Glass <william.glass@gmail.com>
;; Keywords: faces

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:


(deftheme kiel "Light grey and red theme for Emacs")

(custom-theme-set-variables
 'kiel
 '(linum-format " %i "))

(let ((background "#ffffff")
      (region "#ebebea")
      (edge-background "#5c6d70")
      (edge-active "#ffffff")
      (edge-inactive "#353238")
      (text "#353238")
      (comments "#0086b3")
      (docstrings "#0086b3")
      (strings "#9197ae")
      (keywords "#92140c")
      (builtins "#92140c")
      (constants "#0086b3")
      (types "#474350")
      (functions "#474350")
      (variables "#474350"))

  (custom-theme-set-faces
   'kiel

   ;; Basic stuff

   `(default            ((t (:foreground ,text :background ,background))))
   `(region             ((t (:background ,region))))
   `(cursor             ((t (:foreground ,edge-active))))
   `(fringe             ((t (:foreground ,edge-active :background ,edge-background))))
   `(linum              ((t (:foreground ,edge-active :background ,edge-background))))
   `(mode-line          ((t (:foreground ,edge-active :background ,edge-background))))
   `(mode-line-inactive ((t (:foreground ,edge-inactive :background ,edge-background))))
   `(hl-line            ((t (:foreground ,edge-active :background ,edge-background))))

   ;; Font lock

   `(font-lock-comment-face           ((t (:foreground ,comments :slant italic))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,comments :slant italic))))
   `(font-lock-doc-string-face        ((t (:foreground ,docstrings :slant italic))))
   `(font-lock-doc-face               ((t (:foreground ,docstrings :slant italic))))
   `(font-lock-string-face            ((t (:foreground ,strings))))
   `(font-lock-keyword-face           ((t (:foreground ,keywords :weight bold))))
   `(font-lock-builtin-face           ((t (:foreground ,builtins :weight bold))))
   `(font-lock-type-face              ((t (:foreground ,types :weight bold))))
   `(font-lock-constant-face          ((t (:foreground ,constants :weight bold))))
   `(font-lock-function-name-face     ((t (:foreground ,functions :weight bold))))
   `(font-lock-variable-name-face     ((t (:foreground ,variables :weight bold))))

   ))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))


(provide-theme 'kiel)
;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (require 'rainbow-mode nil t) (rainbow-mode 1))
;; End:
;;; kiel-theme.el ends here
