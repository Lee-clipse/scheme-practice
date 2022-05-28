;; 5. 가장 큰 값을 반환하는 함수(A function that returns the largest value).
;; (maximumTail ‘(1 2 3 4 5)) => 5
(define (maximumTail arr)
  (myFunc5 (car arr) arr))

(define (myFunc5 n arr)
  (if (null? arr) n
      (if (>= n (car arr))
          (myFunc5 n (cdr arr))
          (myFunc5 (car arr) (cdr arr)))))
