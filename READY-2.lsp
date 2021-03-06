;- 4 Задача
;- Определите функциональный предикат (КАЖДЫй пред список), 
;- который истинен в том и только в том случае, когда, 
;- являющейся функциональным аргументом предикат пред истинен 
;- для всех элементов списка список.

(defun prov(lst)
(null
(mapcan
(lambda (x)
(if (funcall #'numberp x) nil (list t))
)lst
)
)
)

;- Test 1
(write-line "Задача 4 Test 1")
(princ " >> (1 2 a)")
(print (prov '(1 2 a)))
(write-line "")
(write-line "")

;- Test 2
(write-line "Задача 4 Test 2")
(princ " >> (1 2 2)")
(print (prov '(1 2 2)))
(write-line "")
(write-line "")

;- 8 Задача
;- Напишите генератор натуральных чисел: 0, 1, 2, 3, 4, 5, ...

(defun generator ()
(let
((numb -1))
(lambda () (setq numb (+ numb 1)))
)
)
(setq c1 (generator))

(defun self (&rest rest)
(append '(self) rest)
)

;- Test 1
(write-line "Задача 8 Test 1")
(princ " >> (funcall c1)")
(print (funcall c1))
(print (funcall c1))
(print (funcall c1))
(print (funcall c1))
(print (funcall c1))
(print (funcall c1))
(write-line "")
(write-line "")

;- Задача 12
;- Определите функцию, которая возвращает в качестве значения свой вызов.
(defun свой-вызов (arg)
    (list 'свой-вызов arg)
)

(write-line "")
(write-line "Задача 12 Test 1")
(print (свой-вызов '(1 2 3)))
(write-line "")
(write-line "Задача 12 Test 2")
(print (свой-вызов '(1 2 3)))
(write-line "")
(write-line "Задача 12 Test 3")
(print (свой-вызов '(1 2 3)))

;
