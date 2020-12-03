#lang racket

(define (satisfies-condition lst)
  (define exponent
    (if (even? (car lst)) ; is even?
        2
        3
        ))

  (define lst1
    (list-set lst
              0
              (expt (list-ref lst 0) exponent)))

  (define lst2
    (list-set lst1
              1
              (expt (list-ref lst1 1) exponent)))

  (list-set lst2
            2
            (expt (list-ref lst2 2) exponent))
  )

(println (list 0 2 4))

; element[0] % 2 == 0, square first three elements
(satisfies-condition (list 0 2 4))

; element[0] % 2 != 0, cube first three elements
(satisfies-condition (list 1 2 4))
