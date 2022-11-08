#lang racket

(require racket/trace)
(require htdp/testing)

(define (factorial n)
  (cond
    [(= n 0) 1]
    [(= n 1) 1]
    [else (* n (factorial (- n 1)))]))

(check-expect (factorial 0) 1)
(check-expect (factorial 1) 1)
(check-expect (factorial 2) 2)
(check-expect (factorial 3) 6)
(check-expect (factorial 4) 24)




;uncomment these to test -- combinations --
;(check-expect (combinations 5 5) 1)
;(check-expect (combinations 5 0) 1)
;(check-expect (combinations 5 1) 5)
;(check-expect (combinations 5 4) 5)
;(check-expect (combinations 5 3) 10)
;(check-expect (combinations 6 3) 20)



;uncomment these to test -- recseq --
;(check-expect (recseq 0) 1)
;(check-expect (recseq 1) 2)
;(check-expect (recseq 2) 2)
;(check-expect (recseq 3) 0)
;(check-expect (recseq 4) -4)



;uncomment these to test -- isSorted --
;(check-expect (isSorted '()) true)
;(check-expect (isSorted '(2)) true)
;(check-expect (isSorted '(1 2 3)) true)
;(check-expect (isSorted '(3 2 1)) false)
;(check-expect (isSorted '(1 4 3)) false)



(define (isEven n)
  (= (remainder n 2) 0))

(define (isOdd n)
  (= (remainder n 2) 1))

(check-expect (isEven 2) true)
(check-expect (isEven 3) false)
(check-expect (isEven 4) true)
(check-expect (isOdd 2) false)
(check-expect (isOdd 3) true)
(check-expect (isOdd 4) false)
(check-expect (isOdd 5) true)

; uncomment these to test -- holdsForAll --
;(check-expect (holdsForAll isEven '()) true)
;(check-expect (holdsForAll isEven '(2 4 6)) true)
;(check-expect (holdsForAll isEven '(2 3 6)) false)
;(check-expect (holdsForAll isOdd '(2 4 6)) false)
;(check-expect (holdsForAll isOdd '(1 3 5)) true)



; uncomment these to test -- maxInventory --
;(check-expect (maxInventory '((1 2))) 2)
;(check-expect (maxInventory '((1 2) (3 8) (5 4))) 8)
;(check-expect (maxInventory '((1 2) (3 0) (5 4))) 4)



; uncomment these to test -- checkInventory --
;(check-expect (checkInventory '((1 2))) '(1))
;(check-expect (checkInventory '((1 2) (3 0) (5 4))) '(1 5))
;(check-expect (checkInventory '((1 2) (3 0) (5 4) (8 0))) '(1 5))



; uncomment these to test -- increaseInventory --
;(check-expect (increaseInventory '((1 2))) '((1 12)))
;(check-expect (increaseInventory '((1 2) (3 0) (5 4))) '((1 12) (3 10) (5 14)))
;(check-expect (increaseInventory '((1 2) (3 0) (5 4) (8 0))) '((1 12) (3 10) (5 14) (8 10)))

(generate-report)
