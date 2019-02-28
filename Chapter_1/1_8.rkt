#lang racket

(define (sqrt x)
  (sqrt-iter x 1.0 x))

(define (sqrt-iter prev-guess guess x)
  (if (good-enough? prev-guess guess)
      guess
      (sqrt-iter guess (improve guess x)
                 x)))

(define (improve guess x)
  (triple (* 2 guess) (/ x (square guess))))

(define (good-enough? prev-guess guess)
  (< (/ (abs (- guess prev-guess)) prev-guess) 0.0001))

(define (triple x y)
  (/ (+ x y) 3))

(define (square x)
  (* x x))

(sqrt 0.001) ;expected 0.1
(sqrt 27) ;expected 3
(sqrt 64) ;expected 4
(sqrt 1000) ;expected 10
