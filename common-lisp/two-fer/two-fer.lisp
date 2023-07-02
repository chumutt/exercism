(in-package #:cl-user)
(defpackage #:two-fer
  (:use #:cl)
  (:export #:twofer))
(in-package #:two-fer)
(defun twofer (&optional (name ""))
  (if (= 0 (length name)) ; if name val less than or equal to 0
      (format nil "One for you, one for me.")
      (format nil "One for ~A, one for me." name)))
