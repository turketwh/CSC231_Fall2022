#lang racket
(require racklog)

; space relations
(define %star
  (%rel ()
        [('sun)]
        [('sirius)]
        [('vega)]))

(define %orbits
  (%rel ()
        [('mercury 'sun)]
        [('venus 'sun)]
        [('earth 'sun)]
        [('mars 'sun)]
        [('jupiter 'sun)]
        [('saturn 'sun)]
        [('uranus 'sun)]
        [('neptune 'sun)]
        [('moon 'earth)]
        [('phobos 'mars)]
        [('deimos 'mars)]))
        
; space predicate
(define %spacePredicate 
   (%rel (p) 
   [(p) 
    (%orbits p 'sun)]))

; family parent relation
(define %parent
  (%rel ()
        [('Curtis 'William)]
        [('Margie 'William)]
        [('Curtis 'Carol)]
        [('Margie 'Carol)]
        [('Ernie 'Jennifer)]
        [('Carol 'Jennifer)]
        [('William 'Billy)]
        [('William 'Laura)]
        [('Mary 'Billy)]
        [('Mary 'Laura)]
        [('Laura 'Virginia)]
        [('Laura 'Miles)]
        ))

; family mystery relationship
(define %mysteryRelationship 
    (%rel (x y z) 
     [(x y) 
      (%parent z x) 
      (%parent z y) 
      (%/= x y)]))

; a student relation defining facts about students
(define %student
  (%rel ()
        [(123 35 2.75)]
        [(345 62 2.48)]
        [(456 90 3.62)]
        [(789 70 1.53)]))

; a (partially complete) satisfactoryProgress predicate
(define %satisfactoryProgress
  (%rel (id hours gpa)
        [(id)
         (%student id hours gpa)
         (%>= hours 90)
         (%>= gpa 1.90)]
        [(id)
         (%student id hours gpa)
         (%< hours 90)
         (%>= hours 60)
         (%>= gpa 1.80)]))
         
; a (partially complete) ancester relation
(define %ancestor
  (%rel (x y)
        [(x y)
         (%parent x y)]))

; relTwo relation (associated with relOne below)
(define %relTwo
  (%rel ()
        [(1 11000)]
        [(5 15000)]
        [(8 5600)]
        [(9 17500)]
        [(12 28000)]
        [(15 34200)]
        ))

; relOne relation
(define %relOne
  (%rel (X Y)
        [(X)
         (%relTwo X Y)
         (%< Y 12000)]
        ))
      
; wearAJacket relation indicating when to wear a jacket
(define %wearAJacket
  (%rel (temp windSpeed)
        [(temp windSpeed)
         (%<= temp 55)]
        [(temp windSpeed)
         (%<= temp 65)
         (%>= windSpeed 10)]
        ))

; courses taken relation
(define %taken
  (%rel ()
        [('ben 'csc 111)]
        [('ben 'csc 112)]
        [('ben 'mth 111)]
        [('ben 'mth 117)]
        [('ben 'csc 201)]
        [('ben 'csc 231)]
        [('mary 'csc 111)]
        [('mary 'csc 112)]
        [('mary 'mth 112)]
        [('mary 'mth 117)]
        [('mary 'csc 201)]
        [('mary 'csc 241)]
        [('mary 'csc 321)]
        [('jamie 'csc 111)]
        [('jamie 'csc 112)]
        [('jamie 'mth 117)]
        [('jamie 'mth 121)]
        [('jamie 'csc 201)]
        [('jamie 'csc 191)]
        [('jamie 'csc 391)]
        [('carrie 'csc 111)]
        [('carrie 'csc 112)]
        [('carrie 'mth 111)]
        [('carrie 'mth 112)]
        [('carrie 'mth 205)]
        ))

; completedCalculus relation
(define %completedCalculus
  (%rel (Student)
        [(Student)
         (%taken Student 'mth 111)]
        [(Student)
         (%taken Student 'mth 112)]
        ))
