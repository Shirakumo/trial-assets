(defsystem "trial-assets-gltf"
  :version "0.1.0"
  :author "Selwyn Simsek"
  :maintainer "Yukari Hafner <shinmera@tymoon.eu>"
  :license "zlib"
  :description "Extra asset files for Trial engine games (GLTF)"
  :homepage "https://Shirakumo.github.io/trial/"
  :bug-tracker "https://github.com/Shirakumo/trial-assets/issues"
  :source-control (:git "https://github.com/Shirakumo/trial-assets.git")
  :depends-on ("trial-assets" "trial-gltf")
  :components ((:file "assets-gltf")))
