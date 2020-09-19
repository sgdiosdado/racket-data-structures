#lang racket

; add-ren: Recibe un renglón válido y lo agrega a la matriz
(define (add-ren l c)
  (append l (cons c '()))
  )

; hojas: Recibe un árbol y devuelve una lista con las hojas
(define (hojas tree)
   (cond
    [(null? tree) '()]
    [(and (null? (cadr tree)) (null? (caddr tree))) (cons (car tree) '())]
    [else
     (append
      (append '() (hojas (cadr tree))) (hojas (caddr tree)))]
    )
  )

; arbol de prueba
(define arbol '(8(5(2()())(7()()))(9()(15(11()())()))))