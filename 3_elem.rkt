;; 3. 입력값 n이 리스트에 존재하는지 확인하는 함수(A function to check if n exists in a list).
;; (elem 3 ‘(1 2 3 4 5)) => #t
(define (elem n arr)
  (if (null? arr) #f
      (if (= n (car arr)) #t
          (elem n (cdr arr)))))
