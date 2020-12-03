#lang racket
(println "Calculating the purchase price: ")
(println "Enter the input data:")
(print "Enter the price of 1 KG of apples (RUB.): ")
(define a_price (read))
(print "Enter the weight of apples: ")
(define a_weight (read))
(print "Purchase total: " )
(printf "~s RUB." (* a_price a_weight))