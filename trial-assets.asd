#|
 This file is a part of trial
 (c) 2016 Shirakumo http://tymoon.eu (shinmera@tymoon.eu)
 Author: Selwyn Simsek
|#

(defsystem "trial-assets"
  :version "0.1.0"
  :author "Selwyn Simsek"
  :maintainer "Nicolas Hafner <shinmera@tymoon.eu>"
  :license "zlib"
  :description "Extra asset files for Trial engine games"
  :homepage "https://Shirakumo.github.io/trial/"
  :bug-tracker "https://github.com/Shirakumo/trial-assets/issues"
  :source-control (:git "https://github.com/Shirakumo/trial-assets.git")
  :depends-on ("trial")
  :components ((:file "assets")))
