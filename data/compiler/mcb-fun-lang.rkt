(provide demo)

;; <p>    := (module <info> <fun> ...)
;; 
;; <info> := (<var-def>)
;; 
;; <fun>  := (fun (<name>) <body>)
;;
;; <body> := <preset>
;;         | (set! <name> <int>)
;;         | (set! <name> <binop> <name>)
;;         | (set! <name> <binop> <int>)
;;         | (begin body ...)
;;         | (if <cond> <body> <body>)
;;         | (call <fun>)
;;         | (call-if <fun> <cond>)
;; 
;; <arg> := <int> | <name>
;; 
;; <cond> := (> <val> <val>)
;; 
;; <val> := <int> | <name>
;; 
;; <preset> := (create-target <string>)
;;           | (movetarget~ <string> <val> <val> <val>)
;;           | (movetarget^ <string> <val> <val> <val>)
;;           | (cloneblockon <string> <val> <val> <val>)
;;           | (setblockon <string> <string>)
;;           | (log <string>)

(define demo 
`(module  
   (
    (package "road")
    (vars (tmp1))
   )

   (fun (fillblock x y z)
     (begin
       (movetarget~ "pen" x y z)
       (setblockon "pen" "minecraft:stone")))

   (fun (filltest)
     (begin
       (set! tmp1 3)
       (fillblock 1 1 1)
       (fillblock 1 2 1)
       (fillblock 1 3 1)))

   (fun (start)
     (create-target "pen"))

   (fun (stop)
     (destroy-target "pen")))
)