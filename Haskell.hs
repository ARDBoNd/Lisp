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
 
