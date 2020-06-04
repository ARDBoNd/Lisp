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
