#lang racket

(require racket/trace)
(require htdp/testing)

; UNCOMMENT next lines to test -- listAbs --
;(check-expect (listAbs '()) '())
;(check-expect (listAbs '(2 3)) '(2 3))
;(check-expect (listAbs '(-4 -7)) '(4 7))
;(check-expect (listAbs '(2 -5 4 -6 0)) '(2 5 4 6 0))

; UNCOMMENT next lines to test -- sumLists --
;(check-expect (sumLists '()) '()) ; note that the answer list holds no values since there were no sub-lists
;(check-expect (sumLists '(())) '(0))
;(check-expect (sumLists '((5) (8 10))) '(5 18))
;(check-expect (sumLists '((1 2 3) (2) (3 4) (1 2 5 8))) '(6 2 7 16))

; UNCOMMENT next lines to test -- checkSalePrices --
;(check-expect (checkSalePrices '()) '())
;(check-expect (checkSalePrices '((1 108))) '((1 108)))
;(check-expect (checkSalePrices '((5 200))) '())
;(check-expect (checkSalePrices '((1 108) (6 150))) '((1 108)))
;(check-expect (checkSalePrices '((1 108) (9 75))) '((1 108) (9 75)))

; UNCOMMENT next lines to test -- extractLists --
;(check-expect (extractLists '()) '())
;(check-expect (extractLists '((5) (8 10))) '())
;(check-expect (extractLists '((1 2 3) (2) (3 4) (1 2 5 8))) '((1 2 3) (2) (1 2 5 8)))

; UNCOMMENT next lines to test -- concatenateLists --
;(check-expect (concatenateLists '()) '())
;(check-expect (concatenateLists '(() ())) '())
;(check-expect (concatenateLists '((5) (8 10))) '(5 8 10))
;(check-expect (concatenateLists '((1 2 3) (2) (3 4) (1 2 5 8))) '(1 2 3 2 3 4 1 2 5 8))

(generate-report)
