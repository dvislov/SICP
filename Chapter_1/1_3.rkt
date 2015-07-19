#lang racket

(define (>= x y)
  (or (> x y) (= x y)))

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-of-squares-two-max-of-three x y z)
  (cond ((and (>= x z) (>= y z)) (sum-of-squares x y))
        ((and (>= x y) (>= z y)) (sum-of-squares x z))
        (else (sum-of-squares y z))))


(sum-of-squares-two-max-of-three 1 2 3)
(sum-of-squares-two-max-of-three 1 3 2)
(sum-of-squares-two-max-of-three 2 1 3)
(sum-of-squares-two-max-of-three 2 3 1)
(sum-of-squares-two-max-of-three 3 1 2)
(sum-of-squares-two-max-of-three 3 2 1)

(sum-of-squares-two-max-of-three 1 1 2)
(sum-of-squares-two-max-of-three 2 1 1)
(sum-of-squares-two-max-of-three 1 2 1)

(sum-of-squares-two-max-of-three 2 2 1)
(sum-of-squares-two-max-of-three 2 1 2)
(sum-of-squares-two-max-of-three 1 2 2)

(sum-of-squares-two-max-of-three 2 2 3)
(sum-of-squares-two-max-of-three 2 3 2)
(sum-of-squares-two-max-of-three 3 2 2)

(sum-of-squares-two-max-of-three 2 2 2)
