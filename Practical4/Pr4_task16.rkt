#lang racket

(define (only-in-first-list in-lst1 in-lst2)
  (define out-lst
    (list (map (lambda (i)
                 (when (not (member i in-lst2)) i)
                 )
               in-lst1)))


  (filter-not void? (flatten out-lst))  ;flatten all lists and filter out voids
  )


(only-in-first-list (list 1 2 3 4)
                    (list 2 3))
