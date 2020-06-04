;;; #1
;;; Определите макрос, который возвращает свой вызов
(defmacro get-call nil
	`(quote (get-call))
)

;;; Test #1
(princ "  Test for task #1")
(print (macroexpand '(get-call)))
(print (get-call))
(write-line "")
