#lang racket

;Returns True if v is an atom: ie. a number, symbol, or function, rather than a list or Null.
(define (atom? x) (not (or (pair? x) (null? x)))) ;Had to define myself, as it wasn't recognized

(define (satisfies-condition lst)
  (if (and (atom? (first lst))
           (atom? (last lst)))
      lst
      (list? (list-ref lst 2))
      )
  )

; element[0] == atom, element[n] == atom --> list
(satisfies-condition (list
                      0
                      1
                      2
                      3))

; element[0] != atom, element[n] == atom --> is element[2] a list? (f)
(satisfies-condition (list
                      (list 5 5)
                      1
                      2
                      3 ))

; element[0] != atom, element[n] != atom --> is element[2] a list? (t)
(satisfies-condition (list
                      0
                      1
                      (list 4 4)
                      (list 5 5)))

; element[0] != atom, element[n] != atom --> is element[2] a list? (t)
(satisfies-condition (list
                      (list 5 5)
                      1
                      (list 4 4)
                      (list 5 5)))