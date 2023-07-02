(ql:quickload "cl-factoring")
(defpackage :prime-factors
  (:use :cl :cl-factoring)
  (:export :factors-of))

(in-package :prime-factors)
(defun factors-of (n)
  (factor n))
