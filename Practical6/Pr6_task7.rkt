#lang scheme
(displayln "In which year did WW2 begin?")
(display "Enter a year: ")
(let ((year (read)))
  (if (eq? year 1939)
      (displayln "Correct!")
      (displayln "Incorrect, WW2 began in 1939")
      )
  )


;From practical 2
;#lang racket
;(println "In which year did WW2 begin?")
;(println "Enter a year: ")
;(define year (read))
;(if (= year 1939)
;    (print "Correct!")
;    (print "Incorrect, WW2 began in 1939")
;)