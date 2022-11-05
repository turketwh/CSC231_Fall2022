#lang racket

(require racket/trace)
(require htdp/testing)

; Part A

; Problem 1
(define (func aList)
  (cond
    [(empty? aList) '()]
    [(= (remainder (first aList) 3) 0) (cons (* 2 (first aList)) (func (rest aList)))]
    [else (func (rest aList))]))

(check-expect (func '()) '())
(check-expect (func '(2 3 6)) '(6 12))
(check-expect (func '(2 4 8)) '())


; Problem 2
; UNCOMMENT next lines to test -- func2 --
;(check-expect (func2 '()) '())
;(check-expect (func2 '(2 3 6)) '(6 12))
;(check-expect (func2 '(2 4 8)) '())


; Part B
(define (mapOver2 f list1 list2)
  (if (empty? list1)
      '()
      (cons (f (first list1) (first list2)) (mapOver2 f (rest list1) (rest list2)))))

(define (addElements list1 list2)
  (mapOver2 + list1 list2))

(check-expect (addElements '(1) '(5)) '(6))
(check-expect (addElements '(1 2) '(3 4)) '(4 6))
(check-expect (addElements '(1 0 5) '(2 1 4)) '(3 1 9))

; Problem 3
; UNCOMMENT next lines to test -- listPower --
;(check-expect (listPower '(2) '(3)) '(8))
;(check-expect (listPower '(2 2 2 2) '(0 1 2 3)) '(1 2 4 8))
;(check-expect (listPower '(2 3 4 5) '(2 2 2 2)) '(4 9 16 25)


; Problem 4
; UNCOMMENT next lines to test -- dotProduct --
;(check-expect (dotProduct '(1) '(5)) 5)
;(check-expect (dotProduct '(1 2) '(3 4)) 11)
;(check-expect (dotProduct '(1 0 5) '(2 1 4)) 22)


; Problem 5
; UNCOMMENT next lines to test -- zipTwo --
;(check-expect (zipTwo '() '()) '())
;(check-expect (zipTwo '(1) '(2)) '((1 2)))
;(check-expect (zipTwo '(1 2 3) '(4 5 6)) '((1 4) (2 5) (3 6)))


; Problem 6
; UNCOMMENT next lines to test -- deansList --
;(check-expect (deansList '() '()) '())
;(check-expect (deansList '(Tom) '(3.4)) '())
;(check-expect (deansList '(Tom Mary) '(3.4 3.6)) '(Mary))
;(check-expect (deansList '(Tom Mary Lisa) '(3.4 3.6 3.8)) '(Mary Lisa))
 
(generate-report)
