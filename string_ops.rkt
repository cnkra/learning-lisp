;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname exercise_3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define s1 "hello")
s1

(string-length s1)

(string-ith s1 4)

(string-append s1 (number->string (string-length s1)))

#true
#false

(define x #true)
(define y #false)

(or x y)
(and x y)

(define a 4)
(if (= a 0) 0 (/ 1 a))