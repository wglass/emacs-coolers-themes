;;; sand-and-sea-theme.el --- Color pallete with beige and blue notes.  -*- lexical-binding: t; -*-

;; Copyright (C) 2016  William Glass

;; Author: William Glass <william@spring-2.local>
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

(deftheme sand-and-sea "Sandy and blue theme for Emacs")

(custom-theme-set-variables
 'sand-and-sea
 '(linum-format " %i "))

(let ((background "#ffefe2")
      (region "#ffffff")
      (edge-background "#685044")
      (edge-active "#ffffff")
      (edge-inactive "#3a405a")
      (text "#685044")
      (comments "#e9afa3")
      (docstrings "#e9afa3")
      (strings "#99b2dd")
      (keywords "#3a405a")
      (builtins "#3a405a")
      (types "#3a405a")
      (constants "#3a405a")
      (functions "#99b2dd")
      (variables "#99b2dd"))

  (custom-theme-set-faces
   'sand-and-sea

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


(provide-theme 'sand-and-sea)
;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (require 'rainbow-mode nil t) (rainbow-mode 1))
;; End:
;;; sand-and-sea-theme.el ends here
