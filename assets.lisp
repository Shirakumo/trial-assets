(defpackage #:org.shirakumo.fraf.trial.assets
  (:use #:cl+trial)
  (:shadow #:// #:asset)
  (:export
   #:pool
   #://
   #:asset
   #:heart-in-the-sand
   #:masko-naive
   #:nissi-beach))

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
