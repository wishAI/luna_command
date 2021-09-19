(require "utils.rkt")
(require "const.rkt")

(define (extract-fun-proto p)

  (define (extract-fun fun)
    (match fun
      [`(fun (,name ,arg ...) ,body) 
       `(,name ,arg)]))

  (define (extract-p p)
    (match p
      [`(module ,info ,fun ...)
       `(module ,(list-dict-set info 'fun-proto (map extract-fun fun)) ,fun)]))
    
  (extract-p p))

(define (assign-fun-pos)

  (define (assign-fun fun id)
    (match fun
      [`(fun (,name ,arg ...) ,body)
       `(,name (0 ,(* (+ id 1) 2) 0))]))

  (define (assign-p p)
    (match p
      [`(module ,info ,fun ...)
       `(module ,(list-dict-set info 'fun-pos (map assign-fun fun (range (length fun)))) ,fun)]))
    
  (assign-p p))