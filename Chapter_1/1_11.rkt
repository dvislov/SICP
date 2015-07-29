#lang racket

(define (our-func x)
  (if (< x 3)
    x
    (+ (our-func (- x 1)) (+ (our-func (- x 2)) (our-func (- x 3))))))

(our-func 1)
(our-func 2)
(our-func 3)
(our-func 4)
(our-func 5)
(our-func 6)
(our-func 7)
(our-func 8)
(our-func 9)
(our-func 10)

(define (our-new-func x)
  (our-new-func-iter 3 2 1 x))

(define (our-new-func-iter a b c count)
  (cond ((< count 3) count)
        ((= count 3) a)
        (else (our-new-func-iter (+ a (+ b c)) a b (- count 1)))
  )
)

(our-new-func 1)
(our-new-func 2)
(our-new-func 3)
(our-new-func 4)
(our-new-func 5)
(our-new-func 6)
(our-new-func 7)
(our-new-func 8)
(our-new-func 9)
(our-new-func 10)
