;; (import
  ;(scheme base)
  ;      (scheme write)
        ;; (sfri 13)
        ;; (sfri 14))

(define (abbr test)
  (list->string (map car (map string->list (string-split test #\ )))))
(define (strip-chars str chars)
  (string-delete (->char-set chars) str))

(define (acronym test)
  (cond ((string-null? test) #f)
        (else (strip-chars (abbr test) "!$%&*/:<=>?@^_~+-."))))
