#lang racket

(define (extract-numbers-only lst)
  (define out-lst (list (map (lambda (i)
                         (cond ((list? i) (extract-numbers-only i)) ;if list, call self (recursive)
                               ((number? i) (list i)) ;if number rerurn singleton list of number
                               ; otherwise void
                               ))
                       lst)))

  ;(println out-lst)
  (filter number? (flatten out-lst))  ;flatten all lists and filter out voids
  )


(extract-numbers-only (list 1 "a" (list (list 2 3 "b") 4 "b"))) ; prints only 1, 2, 3, 4
