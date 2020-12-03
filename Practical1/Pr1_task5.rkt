#lang racket
(println "Calculating the resistance of an electrical circuit: ")
(println "Enter the input data:")
(print "Enter the first resistance value (Ohm): ")
(define res1 (read))
(print "Enter the second resistance value (Ohm): ")
(define res2 (read))
(print "Circuit resistance: " )
(printf "~s Ohm." (+ (/ 1 res1) (/ 1 res2)))