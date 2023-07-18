;;; acronym.el --- Acronym (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun acronym (phrase)
;;; Code:
  (let ((result ""))
    (mapc (lambda (char)
            (when (and (>= char ?A) (<= char ?Z))
              (setq result (concat result (string char)))))
          string)
    result))
(provide 'acronym)
;;; acronym.el ends here
