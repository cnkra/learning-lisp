;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname trees) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(list 1 '() '())
(define a (list 1
      (list 2 '() '())
      (list 3 '()'())
      )
  )

(define (root tree) (first tree))
(root a)


(define (sum tree) (cond
                     [(empty? tree) 0]
                     [(number? (first tree)) (+ (first tree) (sum (rest tree)))]
                     [(list? (first tree)) (+ (sum (first tree)) (sum (rest tree)))]
                     [else 0]
                     )
  )
  
(sum a)