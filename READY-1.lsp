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

;Задача 13
;Определите функцию, удаляющую в исходном списке все повторные вхождения элементов.
(defun list(a lst)
	(cond ((NULL lst) NIL)
		((eq (car lst) a) t)
		(t (list a (cdr lst)))
	)
)

(defun removelist(lst)
	(
		(lambda (l1 l2)
			(cond ((NULL lst) NIL)
				((list l1 l2)(removelist l2))
				(t (cons l1 (removelist l2)))
			)
		)
		(car lst)(cdr lst)
	)
)
(print(removelist '(1 2 2 3 3 3)))
(print(removelist '(4 4 4 4 3 5 5 5)))
(print(removelist '(8 1 1 1 1)))
