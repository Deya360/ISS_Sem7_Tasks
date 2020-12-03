#lang racket
(println "Calculation of purchase total with discount: ")
(println "Enter purchase total: ")
(define amount (read))
(if (> amount 1000)
    (begin
      (println "Your discount is 10%")
      (printf "Your purchase total with discount is: ~s" (* amount 0.9)))
    (print amount)
)
