#lang scheme

(define (filter-less-than lst pivot)
  (filter (λ (i) (< i pivot)) lst)
)

(define (filter-greater-or-equal-than lst pivot)
  (filter (λ (i) (>= i pivot)) lst)
)

(define (qsort lst)
  (if (< (length lst) 1)
      lst  ;if list has less than 1 element, return
      (let ((pivot (first lst))) ;first element
        (let ((tail (cdr lst))) ;rest of elements
          (append
           (qsort (filter-less-than tail pivot))
           (list pivot)
           (qsort (filter-greater-or-equal-than tail pivot))
           )
          )
        )
      )
  )

(qsort (list 4 6 5 -3 1 2 -7)) ; prints: (-7 -3 1 2 4 5 6)

