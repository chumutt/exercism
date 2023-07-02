(in-package #:cl-user)
(defpackage #:gigasecond
  (:use #:cl)
  (:export #:from))
(in-package #:gigasecond)
(defun from (year month day hour minute second) ; Define FROM as taking y,m,d,h,m,s.
  ;; It is unneccessary for us to take in millisecond values, so we skip it.
  (multiple-value-bind (newsec newmin newhour newday newmonth newyear)
      (decode-universal-time (+ 1000000000 ; We can literally just add numbers here
                                         ; and it will be decoded as seconds.
       ;; 0 needed at end of arguments because encode-universal time requires a milisecond value.
       (encode-universal-time second minute hour day month year 0)) ; 0 in place of millisecond
    0) ; multiple-value-bind body
  (list newyear newmonth newday newhour newmin newsec)))
