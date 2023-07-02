(in-package #:cl-user)
(defpackage #:acronym
  (:use #:common-lisp)
  (:export #:acronym))

(in-package #:acronym)

(defun acronym (str)
  "Returns the acronym for a noun of tech jargon."
  (remove-if-not #'alphanumericp (remove-if #'lower-case-p (string-capitalize str))))
