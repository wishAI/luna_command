(require "utils.rkt")
(require "const.rkt")

;; <p>    := (module <info> <fun> ...)
;; <fun>  := (fun )
;; 
;; <body> := <cmd>
;;         | (set! <var> <triv>)
;;         | (set! <var> <binop> <triv>)
;;         | (call <string>)
;;         | (call-if <string> <cond>)
;;         | (run <string>)
;;         | (begin body ...)
;; 
;; <arg> := <int> | <name>
;; 
;; <cond> := (> <var> <triv>)
;;         | (< <var> <triv>)
;;         | (= <var> <triv>)
;; 
;; <triv> := <var> | <val> 
;; <var> := <string>
;; <val> := <int>
;; 
;; <cmd> := (create-target <string>)
;;        | (remove-target <string>)
;;        | (movetarget~ <string> <triv> <triv> <triv>)
;;        | (set-block-on <string> <string> <string>)
;;        | (copy-block~ <triv> <triv> <triv>)
;;        | (paste-block-on <string> <string>)
;;        | (log <string>)

(define tmp1 "tmpc1")
(define tmp2 "tmpc2")
(define tmp3 "tmpc3")

(define (compile p)

  (define (global-var var)
    (string-append "@a[tag=" global-var-tag "] " (symbol->string var)))

  (define (make-tmp tmp val)
    (if (number? val) 
        (string-append "scoreboard players set " (global-var tmp) " " (number->string val) "\n") 
        (string-append "scoreboard players operation " (global-var tmp) " = " (global-var val) "\n")))

  (define (compile-cond cond)
    (match cond
      [`(> ,var ,triv)
       (if (number? triv)
           (string-append "if score " (global-var var) " matches " (number->string (+ 1 triv)) "..\n")
           (string-append "if score " (global-var var) ">" (global-var triv) "\n"))]
      [`(< ,var ,triv)
       (if (number? triv)
           (string-append "if score " (global-var var) " matches .." (number->string (- 1 triv)) "\n")
           (string-append "if score " (global-var var) "<" (global-var triv) "\n"))]
      [`(= ,var ,triv)
       (if (number? triv)
           (string-append "if score " (global-var var) " matches " (number->string triv) "\n")
           (string-append "if score " (global-var var) "=" (global-var triv) "\n"))]))

  (define (compile-body body info)
    (match body
      ;; basic commands
      [`(create-target ,name)
       (string-append "summon armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Tags:[" target-tag-prefix name "]}\n")]
      [`(remove-target ,name)
       (string-append "kill @e[tag=" target-tag-prefix name "]\n")]
      [`(move-target~ ,name ,x ,y ,z)
       (let ([target-entity (string-append "@e[tag=" target-tag-prefix name "]")])
         (string-append (make-tmp tmp1 x) (make-tmp tmp2 y) (make-tmp tmp3 z)
                        "scoreboard players operation " (global-var tmp1) " += " (global-var lb-pos-x) "\n"
                        "scoreboard players operation " (global-var tmp2) " += " (global-var lb-pos-y) "\n"
                        "scoreboard players operation " (global-var tmp3) " += " (global-var lb-pos-z) "\n"
                        "execute store result entity " target-entity " Pos[0] double 1 run scoreboard players get " tmp1 "\n"
                        "execute store result entity " target-entity " Pos[1] double 1 run scoreboard players get " tmp2 "\n"
                        "execute store result entity " target-entity " Pos[2] double 1 run scoreboard players get " tmp3 "\n"))]
      [`(set-block-on ,name ,type ,mode)
       (let ([target-entity (string-append "@e[tag=" target-tag-prefix name "]")])
         (string-append "execute at " target-entity " run setblock ~ ~ ~ " type " " mode "\n"))]
      [`(copy-block~ ,cx ,cy ,cz)
       (let ([lb-entity (string-append "@e[tag=" lb-tag "]")]
             [cpos (string-append "~" (number->string cx) " ~" (number->string cy) " ~" (number->string cz))])
         (string-append "execute at " lb-entity " run clone " cpos " " cpos " " clipboard-pos "\n"))]
      [`(paste-block-on ,name mode)
       (let ([target-entity (string-append "@e[tag=" target-tag-prefix name "]")]
             [exe-run (string-append "clone " clipboard-pos " " clipboard-pos " ~ ~ ~ " mode)])
         (string-append "execute at " target-entity " run " exe-run "\n"))]
      [`(run ,cmd) 
       (string-append cmd "\n")]
      [`(log ,text) 
       (string-append "tellraw @a[tag=" global-var-tag "] {\"text\":\"" text ",\"color\":\"green\"}")]
       
      ;; basic instructions
      [`(set! ,var ,triv)
       (if (number? triv)
           (string-append "scoreboard players set " (global-var var) " " (number->string triv))
           (string-append "scoreboard players operation " (global-var var) " = " (global-var triv)))]
      [`(set! ,var (,binop ,var ,triv))
       (if (number? triv)
           (string-append "scoreboard players set " (global-var tmp1) " " triv "\n"
                          "scoreboard players operation " (global-var var) " " (symbol->string binop) "= " (global-var tmp1) "\n")
           (string-append "scoreboard players operation " (global-var var) " " (symbol->string binop) "= " (global-var triv) "\n"))]
      ;; fun call only use y axis when call dynamically
      [`(call ,fun)
       #:when (list-dict-has fun (list-dict-ref info 'fun-proto))
       (let ([jb-entity (string-append "@e[tag=" jb-tag "]")]
             [fun-pos (list-dict-ref fun (list-dict-ref info 'fun-pos))])
         (string-append "scoreboard players set " (global-var fun-pos-x) " " (number->string (first fun-pos)) "\n"
                        "scoreboard players set " (global-var fun-pos-y) " " (number->string (second fun-pos)) "\n"
                        "scoreboard players set " (global-var fun-pos-y) " " (number->string (third fun-pos)) "\n"
                        "execute at " jb-entity " run data merge block ~ ~ ~ {auto:0b}\n"
                        "execute at " jb-entity " run data merge block ~ ~ ~ {auto:1b}\n"))]
      [`(call-if ,fun ,cond)
       #:when (list-dict-has fun (list-dict-ref info 'fun-proto))
       (let ([jb-entity (string-append "@e[tag=" jb-tag "]")]
             [cond-if (compile-cond cond)]
             [fun-pos (list-dict-ref fun (list-dict-ref info 'fun-pos))])
         (string-append "scoreboard players set " (global-var fun-pos-x) " " (number->string (first fun-pos)) "\n"
                        "scoreboard players set " (global-var fun-pos-y) " " (number->string (second fun-pos)) "\n"
                        "scoreboard players set " (global-var fun-pos-y) " " (number->string (third fun-pos)) "\n"
                        "execute at " jb-entity " run data merge block ~ ~ ~ {auto:0b} " cond-if "\n"
                        "execute at " jb-entity " run data merge block ~ ~ ~ {auto:1b} " cond-if "\n"))]
      ;; dynamic call not supported without a stack
      ; [`(call ,fun)
      ;  (let ([jb-entity (string-append "@e[tag=" jb-tag "]")])
      ;    (string-append "scoreboard players operation " (global-var fun-pos-y) " " (global-var fun) "\n" 
      ;                   "execute at " jb-entity " run data merge block ~ ~ ~ {auto:0b}\n"
      ;                   "execute at " jb-entity " run data merge block ~ ~ ~ {auto:1b}\n"))]
      ; [`(call-if ,fun ,cond)
      ;  (let ([jb-entity (string-append "@e[tag=" jb-tag "]")]
      ;        [cond-if (compile-cond cond)])
      ;    (string-append "scoreboard players operation " (global-var fun-pos-y) " = " (global-var fun) "\n"
      ;                   "execute at " jb-entity " run data merge block ~ ~ ~ {auto:0b} " cond-if "\n"
      ;                   "execute at " jb-entity " run data merge block ~ ~ ~ {auto:1b} " cond-if "\n"))]
      [`(begin ,s ...)
       (foldr string-append "" (map (λ (x) (compile-body x info)) s))]))

  (define (compile-fun fun info)
    (match fun
      [`(fun (,name) ,body)
       `(,(string-append name ".mcfunction") ,(compile-body body info)))])

  (define (compile-p p)
    (match p
      [`(module ,info ,fun ...) `(,info ,(map (λ (f) (compile-fun f info)) fun))]))
    
  (compile-p p))