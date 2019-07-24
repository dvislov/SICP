#lang racket
;        | n, n < 3
; f(n) = |
;        | f(n - 1) + f(n - 2) + f(n - 3), n >= 3

(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1))
         (f-recursive (- n 2))
         (f-recursive (- n 3))
      )
  )
)

(f-recursive 1)
(f-recursive 2)
(f-recursive 3)
(f-recursive 4)
(f-recursive 5)
(f-recursive 6)
(f-recursive 7)
(f-recursive 10)

(define (f-iterative n)
  (f-iter 2 1 0 n)
)

(define (f-iter a b c count)
  (if (= count 0)
      c
      (f-iter (+ a b c) a b (- count 1))
  )
 )

(f-iterative 1)
(f-iterative 2)
(f-iterative 3)
(f-iterative 4)
(f-iterative 5)
(f-iterative 6)
(f-iterative 7)
(f-iterative 10)
