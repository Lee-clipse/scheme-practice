;; 7. 두 개의 리스트를 입력으로 받아서 하나의 리스트로 조합하는 함수(A function that takes two lists as input and combines them into a single list).
;; (zip ‘(1 3) ‘(2 4)) => ((1 2 3 4))
(define (zip arr1 arr2)
  (myFunc7 arr1 arr2 `()))

(define (myFunc7 arr1 arr2 res)
  (cond ((null? arr1) (append res arr2))
        ((null? arr2) (append res arr1))
        (else (myFunc7 (cdr arr1) (cdr arr2) (append res (list (car arr1)) (list (car arr2)))))))
