-- №4
-- Заданный числовой список разбить на подсписки из возрастающих
-- подпоследовательностей максимальной длины рядом стоящих чисел.
-- Так, например, если исходный список состоял из чисел 
-- [2, 7, 10, 8, 3, 4, 9, 1, 2, 0, 8, 3, 2, 5], то результатом работы
-- программы должен быть следующий список списков:
-- [[2, 7, 10], [8], [3, 4, 9], [1, 2], [0, 8], [3], [2, 5]].

(defun f (lst)
    (cond
        ((null lst) nil)
        ((null (cdr lst)) (list lst))
        (t ((lambda (prev-res head) (if (< head (caar prev-res))
                (cons (cons head (car prev-res)) (cdr prev-res))
                (cons (list head) prev-res)))
            (f (cdr lst)) (car lst)))
    )
)

(print (f '()))
(print (f '(2)))
(print (f '(2 7 10 8 3 4 9 1 2 0 8 3 2 5)))

-- №5 Реализовать функцию ПЕРЕСЕЧЕНИЕ на языке Haskell, формирующую пересечение 2х множеств.
intersect [] _ = []
intersect (x:xs) ys
    | x `elem` ys = x : intersect xs ys
    | otherwise = intersect xs ys


-- №12
-- Определите функцию, разбивающую список (a b с d...) на пары ((а b) (с d)...).
split [] = [] 
split [x] = [(x,x)] 
split (x1:x2:xs) = (x1,x2) : (split xs)
 
 
 
main = do 
       putStrLn "Task №1"
       print (myLast [1,2,3,4,5])
 
       putStrLn "Тest №5"
       print (encode ['a', 'a', 'a', 'b', 'b'])
       print (encode ['a', 'a', 'b', 'b', 'b', 'c', 'c'])
       print (encode ['a', 'a', 'a', 'b', 'b', 'b', 'c', 'c', 'c', 'a'])
 
       putStrLn "Test №12"
       print (split ["a","b","c","d","e","f","g"] ) 
       print (split [1,2,3,4,5] ) 
 


-- Задача 16
-- Определите предикат МНОЖЕСТВО-Р, который проверяет, является ли список 
-- множеством, т.е. входит ли каждый элемент в список лишь один раз.
checkIsSet::(Eq a) => [a] -> Bool
checkIsSet list
    | list == [] = True
    | (head list) `elem` (tail list) = False
    | otherwise = checkIsSet(tail list)
