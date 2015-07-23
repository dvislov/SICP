#lang racket

(define (plus-v1 a b)
  (if (= a 0)
    b
    (inc (plus-v1 (dec a) b))))

(define (plus-v2 a b)
  (if (= a 0)
    b
    (plus-v2 (dec a) (inc b))))

(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

(plus-v1 4 5)
(plus-v2 4 5)
