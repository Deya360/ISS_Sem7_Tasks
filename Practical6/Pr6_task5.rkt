#lang scheme

(define (solve-quadratic-equation a b c)
  (displayln "Equation roots: ")
  (let ((dc (sqrt (- (* b b) (* 4.0 a c)))))
    (begin (display "x1 = ")
           (displayln (/ (+ (- b) dc) (* 2.0 a)))
           (display "x2 = ")
           (displayln (/ (- (- b) dc) (* 2.0 a))))
    )
  )

(displayln "Solving of a quadratic equation: ")
(displayln "Enter on a single line the values of the coefficients: ")
(solve-quadratic-equation (read) (read) (read))



;From practical 2
;#lang racket
;(define (solve-quadratic-equation a b c)
;  (define discriminant (sqrt (- (* b b) (* 4.0 a c))))
;  (values (print "x1 = ")
;          (println (/ (- (- b) discriminant)
;                      (* 2.0 a)))
;          (print "x2 = ")
;          (println (/ (+ (- b) discriminant)
;                      (* 2.0 a)))))
;
;(println "Solving of a quadratic equation: ")
;(println "Enter on a single line the values of the coefficients: ")
;(define a (read))
;(define b (read))
;(define c (read))
;(println "Equation roots: ")
;(solve-quadratic-equation a b c)
