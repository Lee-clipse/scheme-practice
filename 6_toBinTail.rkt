;; 6. 10진수 숫자를 입력받아서 2진수 리스트로 변환하는 함수(A function to convert decimal number to binary number).
;; (toBinTail 5) => (1 0 1)
(define (toBinTail n)
  (cond ((< n 0) (display "Not for negative\n"))
        ((= n 0) `(0))
        (else (myFunc6 n `()))))

(define (myFunc6 n res)
  (if (< n 1) res
      (myFunc6 (quotient n 2) (cons (modulo n 2) res))))