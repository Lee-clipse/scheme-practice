;; 4. 리스트의 값을 뒤집는 재귀 함수(A function that returns a list in reverse order).
;; (reverseTail ‘(1 2 3 4 5)) => (5 4 3 2 1)
(define (reverseTail arr)
  (myFunc4 arr `()))

(define (myFunc4 arr res)
  (if (null? arr) res
      (myFunc4 (cdr arr) (cons (car arr) res))))
