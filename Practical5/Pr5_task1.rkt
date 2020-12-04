#lang scheme

; has two elements?
(define (has-two-elements lst)
  (null? (cdr lst))
  )

; is next element greater than?
(define (is-greater lst)
  (> (car lst) (cadr lst))
  )

; swap two elements
(define (swap lst)
  (cons
   (car lst)
   (cdr (cdr lst)))
  )


(define (bubble-sort lst) 
  (cond ((has-two-elements lst) lst) 
        ((is-greater lst)
         (cons
          (cadr lst)
          (bubble-sort (swap lst)))
         )
        (else (cons
               (car lst)
               (bubble-sort (cdr lst))) ; skip and continue
              )
        )
  )


(define (actual-sort lst size)
  (cond ((eq? size 1) (bubble-sort lst)) ;stopping-criteria
        (else (actual-sort (bubble-sort lst) (- size 1))) ;recursive call to self with size - 1
        )
  )

; convenience func
(define (sort-utill lst)
  (actual-sort lst (length lst))
  )

(sort-utill (list 4 6 5 -3 1 2 -7)) ; prints: (-7 -3 1 2 4 5 6)

