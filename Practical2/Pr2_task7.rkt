#lang racket
(println "In which year did WW2 begin?")
(println "Enter a year: ")
(define year (read))
(if (= year 1939)
    (print "Correct!")
    (print "Incorrect, WW2 began in 1939")
)
