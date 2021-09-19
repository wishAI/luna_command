#lang racket
(require cpsc411/compiler-lib)

(provide 
  list-dict-has
  list-dict-ref
  list-dict-set
  replace-all
  run-seqn)


; (define (contain l x)
;   (ormap (lambda (e) (eq? x e)) l))

; (define (ex-last l) 
;   (reverse (rest (reverse l))))

; (define (build-check valid? item)
;   (lambda (x) (if (valid? x)
;                   x
;                   (error "Expected " item " ,got " x))))

; (define (debug-log e info)
;   (if is-debug
;       (begin 
;         (println (string-append "debug: " info))
;         (if (eq? info "hoist-lmb") (println e) `())
;         ; (if (eq? info "impl-mops") (println e) `())
;         (if (eq? info "check") (println e) `())
;         ; (println e) 
;         e)
;        e))

; (define (format-int i)
;   (match i
;     [(list 'min-int x) (min-int x)]
;     [(list 'max-int x) (max-int x)]
;     [_ i]))

; (define (dict-ref-exist d x)
;   (if (contain (dict-keys d) x)
;       (dict-ref d x)
;       x))

(define count -1)
(define (fresh-int)
  (set! count (+ count 1))
  count)

; (define (var-type var)
;   (match var))

(define (fresh-name n)
  (string->symbol (string-append n (number->string (fresh-int)))))

(define (list-dict-ref d x)
  (if (empty? d)
      (error "Element with key " x " not found.")
      (if (eq? (first (first d)) x)
          (second (first d))
          (list-dict-ref (rest d) x))))

(define (list-dict-set d x v)
  (if (ormap (lambda (y) (eq? x (first y))) d)
      (if (eq? (first (first d)) x)
          (append (list (list x v)) (rest d))
          (append (list (first d)) (list-dict-set (rest d) x v)))
      (append (list (list x v)) d)))

(define (list-dict-has d x)
  (ormap (λ (y) (eq? x y)) (map first d)))

(define (replace-all d p)
  (match p
    [`(,prefix ,args ...) `(,prefix ,@(map (λ (x) (replace-all d x)) args))]
    [_ (if (list-dict-has d p) (list-dict-ref d p) p)]))

(define (run-seqn p fun-list)
  (foldl (lambda (fun p) (fun p))
         p
         fun-list))
