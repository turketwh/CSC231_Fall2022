#lang racket
(require racklog)

; space relations
(define %orbits
  (%rel ()
        [('mercury 'sun)]
        [('venus 'sun)]
        [('earth 'sun)]
        [('moon 'earth)]
   ))

(define %planet 
   (%rel (p) 
         [(p) 
          (%orbits p 'sun)]
   ))

(define %satellite
   (%rel (s t)
      [(s) 
       (%orbits s t)
       (%planet t)]
   ))


; location relation
(define %location
  (%rel ()
        [('wakeforest 36.133892 -80.278030)]
        [('duke 36.001427 -78.938232)]
        [('uncch 35.898800 -79.041267)]
  ))
  

; studentInfo relation
(define %studentInfo
  (%rel ()
        [('lisa 'ba 'csc 75)]
        [('tom 'bs 'csc 105)]
        [('gina 'ba 'mth 95)]
        [('mary 'bs 'csc 99)]
        [('robert 'bs 'csc 50)]
        [('vickie 'ba 'csc 95)]
        [('todd 'ba 'csc '110)]
  ))
