#lang slideshow
(hc-append  (circle 50) (rectangle 50 20))
(define c 100)
(+ 10 c)

(define (sum a b)
(+ a b))

(sum 45 55)

(define (four p)
  (define two-p (hc-append p p))
  (vc-append two-p two-p))

(four (circle 10))