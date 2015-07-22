#lang racket

(define (sqrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
    guess
    (sqrt-iter (improve guess x)
      guess
      x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess prev-guess)
  (< (abs (/ (- guess prev-guess) prev-guess)) 0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 0.5 x))

"Results from old method:"
1.0
1.4142156862745097
1.7321428571428572
2.0000000929222947
0.316245562280389
0.1444238094866232
0.04310229222818108
0.03168569297960603
31.622782450701045
8573.301872675162
"--------------------"

(sqrt 1)
(sqrt 2)
(sqrt 3)
(sqrt 4)

(sqrt 0.1)
(sqrt 0.02)
(sqrt 0.0012)
(sqrt 0.000041)

(sqrt 1000)
(sqrt 73501505)
