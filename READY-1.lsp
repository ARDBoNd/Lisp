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



;Задача 45
;Предположим, что у имени города есть свойства х и у, которые содержат координаты места нахождения города относительно 
;некоторого начала координат. Напишите функцию (РАССТОЯНИЕ a b), вычисляющую расстояние между городами а и b.
(defun setc(cityname x y)
	(setf (get cityname 'x) x)
	(setf (get cityname 'y) y)
)
(defun pow(x)
	(* x x))

(defun dist(c1 c2)
	(sqrt (+ (pow (- (get c1 'x) (get c2 'x))) 
		 (pow (- (get c1 'y) (get c2 'y)))
		)
	)
)

(defun dist1(city1 city2 x1 y1 x2 y2)
	(setc city1 x1 y1)
	(setc city2 x2 y2)
	(dist city1 city2)
)
(print (dist1 'City1 'City2 0 1 12 10))
(print (dist1 'Simferopol 'Dzhankoy 1 1 25 25))
(print (dist1 'Yalta 'Dzhankoy 0 0 45 45))
