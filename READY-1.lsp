; 5: Oпределите функцию, которая увеличивает элементы исходного списка на единицy

(defun inc-list (lst) (
                       cond ((null lst) NIL)
                       (t (cons (+ (car lst) 1) 
                                (inc-list(cdr lst)))
                          )
                       )
  )
(print(inc-list '(1 2 3)))
(print(inc-list '(0)))
(print(inc-list '(0)))
