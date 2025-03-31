;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname lists) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(list 1 2 3 4)
(list 1 2 3 "a" "xyz")
(define a (list 3 2 1))

a

(first a)
(rest a)

(car a)
(cdr a)

(append '(10) a)
a

(cons 10 a)
(cons (list 10) a)

(define (plusone l1) (if (empty? l1)
                         '()
                         (cons (+ 1 (car l1))
                               (plusone (rest l1)))))

(plusone a)



(define (mapp f l1) (if (empty? l1)
                         '()
                         (cons (f (car l1))
                               (mapp f (rest l1)))))

(define (newFonc a) (* a a))
(mapp newFonc a)

(define x (list 2 3 4 5 6 7 5))
(define y (list 23 13 83 1 2 3 4))

(define (sumEach a b) (if (empty? a)
                          b
                          (if (empty? b)
                              a
                              (cons (+ (car a) (car b))
                                    (sumEach (cdr a) (cdr b))
                                    )
                              )
                          )
  )

(sumEach x y)