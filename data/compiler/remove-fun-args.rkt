(require "utils.rkt")
(require "const.rkt")


(define (remove-fun-args p)

  (define (fun-var v)
    (string->symbol (string-append "funvar_" (symbol->string v))))

  (define (rename-arg fun)
    (match fun
      [`(fun (,name ,arg ...) ,body)
       (let* ([new-arg (map fun-var arg)]
              [arg-dict (map list arg new-arg)])
         (replace-all arg-dict body))]))
    
  (define (remove-body info body)
    (match body
      [`(call ,fun ,arg ...)
       #:when (list-dict-has fun (list-dict-ref info 'fun-proto))
       (let ([arg-var (map fun-var (list-dict-ref fun (list-dict-ref info 'fun-proto)))])
          `(,@(map (λ (a v) `(set! ,v ,a)) arg arg-var)
            (call ,fun)))]
      [`(call-if ,fun ,cond ,arg ...)
       #:when (list-dict-has fun (list-dict-ref info 'fun-proto))
       (let ([arg-var (map fun-var (list-dict-ref fun (list-dict-ref info 'fun-proto)))])
          `(,@(map (λ (a v) `(set! ,v ,a)) arg arg-var)
            (call-if ,fun ,cond)))]
      [`(begin ,e ...)
       `((begin ,@(foldr append (map (λ (x) (remove-body info x)) e))))]
      [_ `(,body)]))
  
  (define (remove-fun info fun)
    (match fun
      [`(fun (,name ,arg ...) ,body) `(fun (,name) ,(remove-body info body))]))

  (define (remove-p p)
    (match p
      [`(module ,info ,fun ...) 
       `(module ,info ,@(map (λ (x) (remove-fun info x)) (map rename-arg fun)))]))
    
  (remove-p p))