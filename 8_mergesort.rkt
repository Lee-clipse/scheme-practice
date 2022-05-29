;; 8. Merge Sort(https://en.wikipedia.org/wiki/Merge_sort)
;; (mergesort '(5 4 1 2 3)) => (1 2 3 4 5)
(define (mergesort arr)
  (cond ((null? arr) arr)
        ((null? (cdr arr)) arr)
        (else (let ((n (quotient (length arr) 2)))
                (merge (mergesort (getL n arr `())) (mergesort (getR n arr)) `())))))

(define (merge L R res)
  (cond ((null? L) (append res R))
        ((null? R) (append res L))
        (else (if (< (car L) (car R))
                  (merge (cdr L) R (append res (list (car L))))
                  (merge L (cdr R) (append res (list (car R))))))))

(define (getL n arr res)
  (if (= n 0) res
      (getL (- n 1) (cdr arr) (cons (car arr) res))))

(define (getR n arr)
  (if (= n 0) arr
      (getR (- n 1) (cdr arr))))