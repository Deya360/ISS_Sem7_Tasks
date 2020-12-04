#lang scheme

(define (eval exp1 op exp2)
  (match op
    ['+ (+ exp1 exp2)]
    ['- (- exp1 exp2)]
    ['* (* exp1 exp2)]
    ['/ (/ exp1 exp2)]))

(define (calc exp)
  (cond
    ;if input less than or equal to 1, return input 
    ((<= (length exp) 1) 
     (first exp)
     )

    ;solve in paranthesis first and recursive call with rest of equation
    ((list? (first exp)) ; is left side parenthesis?
     (calc (cons (calc (first exp))
                 (rest exp)))
     )
    ((list? (third exp)) ; is right side a parenthesis?
     (calc (append (list (first exp)
                         (second exp)
                         (calc (third exp)))
                   (list-tail exp 3)))
     )
    
    (else
     (calc (cons (eval (first exp) (second exp) (third exp))
                 (list-tail exp 3))))
    )
  )

(calc '((4 + 7) - (14 / 8 + (7 * 2)))) ;prints -4 3/4  ==  -4.75