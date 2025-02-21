;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname exercise_5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (two-times a) (* 2 a))
(two-times 150)

(define (sum a b) (+ a b))
(sum 340 (two-times (sqrt 144)))


(define (fac n) (cond
                  [(= n 0) 1]
                  [(> n 0) (* n (fac (- n 1)))]
))

(fac 5)

(define (fibo n)
  (if (= n 1) 1
      (if (= n 2) 1
          (+ (fibo (- n 1)) (fibo (- n 2)))
      )
  )
)

(fibo 8)