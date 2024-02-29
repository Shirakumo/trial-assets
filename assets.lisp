(defpackage #:org.shirakumo.fraf.trial.assets
  (:use #:cl+trial)
  (:shadow #:// #:asset)
  (:export
   #:pool
   #://
   #:asset))

(in-package #:org.shirakumo.fraf.trial.assets)

(define-pool pool)

(defun // (name &optional (resource T))
  (trial:// 'pool (intern (string name) #.*package*) resource))

(define-compiler-macro // (name &optional (resource T) &environment env)
  (if (constantp name env)
      `(trial:// 'pool ',(intern (string name) #.*package*) ,resource)
      `(trial:// 'pool (intern ,(string name) #.*package*) ,resource)))

(defun asset (name &optional errorp)
  (trial:asset 'pool (intern (string name) #.*package*) errorp))

(define-compiler-macro asset (name &optional errorp &environment env)
  (if (constantp name env)
      `(trial:asset 'pool ',(intern (string name) #.*package*) ,errorp)
      `(trial:asset 'pool (intern ,(string name) #.*package*) ,errorp)))

(define-asset (pool heart-in-the-sand) image
    '(#p"heart-in-the-sand/posx.jpg" #p"heart-in-the-sand/negx.jpg"
      #p"heart-in-the-sand/posy.jpg" #p"heart-in-the-sand/negy.jpg"
      #p"heart-in-the-sand/posz.jpg" #p"heart-in-the-sand/negz.jpg")
  :target :texture-cube-map)

(define-asset (pool masko-naive) image
    '(#p"masko-naive/posx.jpg" #p"masko-naive/negx.jpg"
      #p"masko-naive/posy.jpg" #p"masko-naive/negy.jpg"
      #p"masko-naive/posz.jpg" #p"masko-naive/negz.jpg")
  :target :texture-cube-map)

(define-asset (pool nissi-beach) image
    '(#p"nissi-beach/posx.jpg" #p"nissi-beach/negx.jpg"
      #p"nissi-beach/posy.jpg" #p"nissi-beach/negy.jpg"
      #p"nissi-beach/posz.jpg" #p"nissi-beach/negz.jpg")
  :target :texture-cube-map)

(define-assets-from-path (pool environment-map "*.hdr"))
(define-assets-from-path (pool image "*.jpg"))
(define-assets-from-path (pool image "*.jpeg"))
(define-assets-from-path (pool image "*.png"))
(define-assets-from-path (pool image "*.ktx"))
(define-assets-from-path (pool image "*.gif"))
(define-assets-from-path (pool image "*.bmp"))
(define-assets-from-path (pool image "*.qoi"))
(define-assets-from-path (pool image "*.ter"))
(define-assets-from-path (pool image "*.tga"))
(define-assets-from-path (pool image "*.tiff"))
(define-assets-from-path (pool image "kenney-particles/*.png" :ignore-directory T))
(define-assets-from-path (pool sprite-data "*.json"))
(define-assets-from-path (pool model-file "*.glb"))
(define-assets-from-path (pool model-file "*.gltf"))
(define-assets-from-path (pool model-file "*.obj"))
(define-assets-from-path (pool model-file "*.fbx"))
(define-assets-from-path (pool video-file "*.ogv"))
(define-assets-from-path (pool audio-file "sounds/*.wav" :ignore-directory T))
(define-assets-from-path (pool audio-file "sounds/*.ogg" :ignore-directory T))
(define-assets-from-path (pool audio-file "sounds/*.mp3" :ignore-directory T))
(define-assets-from-path (pool audio-file "sounds/*.opus" :ignore-directory T))
(define-assets-from-path (pool audio-file "sounds/*.flac" :ignore-directory T))

