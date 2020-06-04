-- 8 Задача
;;; Напишите генератор натуральных чисел: 0, 1, 2, 3, 4, 5, ...

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

;;; Test 1
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

;Задача 12
;Определите функцию, которая возвращает в качестве значения свой вызов.
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
