#lang racket

(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

(define (plus-recursive a b)
  (if (= a 0)
      b
      (inc (plus-recursive (dec a) b))))

; (plus-recursive 4 5)
;   (inc (plus-recursive 3 5))
;     (inc (inc (plus-recursive 2 5)))
;       (inc (inc (inc ( plus-recursive 1 5))))
;         (inc (inc (inc (inc ( plus-recursive 0 5)))))
;         (inc (inc (inc (inc (5)))))
;       (inc (inc (inc 6)))
;     (inc (inc 7))
;   (inc 8)
; 9

(define (plus-iterative a b)
  (if (= a 0)
      b
      (plus-iterative (dec a) (inc b))))

; (plus-iterative 4 5)
; (plus-iterative 3 6)
; (plus-iterative 2 7)
; (plus-iterative 1 8)
; (plus-iterative 0 9)
; 9

(plus-recursive 4 5)
(plus-iterative 4 5)
