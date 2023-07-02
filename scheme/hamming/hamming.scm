(import (rnrs))

(define (hamming-distance strand-a strand-b)
  (cond ((and (= (string-length strand-a) 0) 
              (= (string-length strand-b) 0)) 0)
        ((and (= (length (map char? (string->list strand-a))) 1)
              (= (length (map char? (string->list strand-a))) 1)) 
         (- 
            (cdadr (array->list (string-match strand-a strand-b))) 
            (string-length strand-a)))
        (else (string-match strand-a strand-b))))




























;; feel free to ignore this

;;(define (hamming-distance strand-a strand-b)
;;  'implement-me!)

;(define (hamming-distance strand-a strand-b)
;  (cond ((and (= (string-length strand-a) 0) 
;              (= (string-length strand-b) 0)) 0)
       ; ((and (and (char? strand-a)
       ;            (char? strand-b))
       ;      (and (eq?   strand-a)
       ;           (eq?   strand-b))) 0)
;        (else (string-match strand-a strand-b))))
