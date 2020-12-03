#lang racket

;Returns True if x is an atom: ie. a number, symbol, or function, rather than a list or Null.
(define (atom? x) (not (or (pair? x) (null? x)))) ;Had to define myself, as it wasn't recognized

(define (extract-atoms-only in-lst)
  (define out-lst
    (list (map (lambda (i)
                 (when (and (atom? i)
                            (not (number? i))
                            (not (string? i)))
                   (list i)))
               in-lst)))

  (filter-not void? (flatten out-lst))  ;flatten all lists and filter out voids
  )


(extract-atoms-only (list not 'Hello "str" (list 4 "b") 4)) ; prints (#<procedure:not> Hello)
