(defpackage #:org.shirakumo.fraf.trial.assets
  (:use #:cl)
  (:local-nicknames (#:trial #:org.shirakumo.fraf.trial)))

(in-package #:org.shirakumo.fraf.trial.assets)

(trial:define-pool workbench :base :trial-assets)

(export '(workbench))
