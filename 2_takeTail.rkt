;; 2. 입력 리스트에서 입력받은 숫자만큼의 값만 꺼내오는 함수(A function that returns only the number of values entered in a list)
;; (takeTail 3 ‘(1 2 3 4 5)) => (1 2 3)
(define (takeTail n arr)
  (if (or (< n 0) (> n (length arr)))`error
      (myFunc2 n arr `())))

(define (myFunc2 n arr res)
  (if (<= n 0) res
      (myFunc2 (- n 1) (cdr arr) (append res (list (car arr))))))
