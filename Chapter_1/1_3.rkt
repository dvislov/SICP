#lang racket
(define (>= x y)
  (not (< x y)))

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-squares-of-two-max-from-three x y z)
  (cond ((and (>= x z) (>= y z)) (sum-of-squares x y))
        ((and (>= x y) (>= z y)) (sum-of-squares x z))
        (else (sum-of-squares y z))))
 

(sum-squares-of-two-max-from-three 0 0 0) ;{expected 0}
(sum-squares-of-two-max-from-three -1 0 0) ;{expected 0}
(sum-squares-of-two-max-from-three 3 2 1) ;{expected 13}
(sum-squares-of-two-max-from-three -3 -2 -1) ;{expected 5}
