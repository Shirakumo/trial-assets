(defsystem "trial-assets"
  :version "0.1.0"
  :author "Selwyn Simsek"
  :license "zlib"
  :depends-on ("trial")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "trial-assets/tests"))))

(defsystem "trial-assets/tests"
  :author "Selwyn Simsek"
  :license "zlib"
  :depends-on ("trial-assets"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for trial-assets"
  :perform (test-op (op c) (symbol-call :rove :run c)))
