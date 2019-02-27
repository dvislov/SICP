#lang racket

(define (sqrt x)
  (sqrt-iter x 1.0 x))

(define (sqrt-iter prev-guess guess x)
  (if (good-enough? prev-guess guess)
      guess
      (sqrt-iter guess (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? prev-guess guess)
  (< (/ (abs (- guess prev-guess)) prev-guess) 0.0001))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(sqrt 0.00001)
(sqrt 1048576)