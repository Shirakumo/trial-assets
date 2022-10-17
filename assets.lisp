(defpackage #:org.shirakumo.fraf.trial.assets
  (:use #:cl)
  (:local-nicknames (#:trial #:org.shirakumo.fraf.trial))
  (:export
   #:pool))

(in-package #:org.shirakumo.fraf.trial.assets)

(trial:define-pool pool)
