;; 1. 숫자를 두 개 입력 받은 후 두 번째 숫자를 첫 번째 숫자만큼 가지고 있는 리스트를 반환하는 함수(A function that takes two numbers and returns a list containing as many second numbers as the first).
;; (replicateTail 3 5) => (5 5 5)
(define (replicateTail n a)
  (myFunc1 n a `()))

(define (myFunc1 n a res)
  (if (<= n 0) res
      (myFunc1 (- n 1) a (cons a res))))