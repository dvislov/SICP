#lang racket

(define (sqrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
    guess
    (sqrt-iter (improve guess x)
      guess
      x)))

(define (improve guess x)
  (triorage (/ x (square guess)) (double guess)))

(define (double x)
  (* x 2))

(define (triorage x y)
  (/ (+ x y) 3))

(define (good-enough? guess prev-guess)
  (< (abs (/ (- guess prev-guess) prev-guess)) 0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 0.5 x))

(sqrt 1)
(sqrt 2)
(sqrt 3)
(sqrt 8)
(sqrt 27)

(sqrt 0.1)
(sqrt 0.02)
(sqrt 0.0012)
(sqrt 0.000041)

(sqrt 1000)
(sqrt 73501505)
