#lang racket

;Returns True if v is an atom: ie. a number, symbol, or function, rather than a list or Null.
(define (atom? x) (not (or (pair? x) (null? x)))) ;Had to define myself, as it wasn't recognized

(define (satisfies-condition lst obj)
  (if (and (atom? (car lst))
           (atom? obj))
      (list-set lst 0 obj)
      (list-set lst (- (length lst) 1) obj)
  ))

; element[0] == atom, obj == atom --> replace first element
(satisfies-condition (list 0 1 2 3 4)
                     5)

; element[0] != atom, obj == atom --> replace last element
(satisfies-condition (list (list 0 1) 1 2 3 4)
                     5) 

; element[0] == atom, obj != atom --> replace last element
(satisfies-condition (list 0 1 2 3 4)
                     (list 5 6))

; element[0] != atom, obj != atom --> replace last element
(satisfies-condition (list (list 0 1) 1 2 3 4)
                     (list 5 6)) 