(defpackage trial-assets/tests/main
  (:use :cl
        :trial-assets
        :rove))
(in-package :trial-assets/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :trial-assets)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
