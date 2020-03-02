#!/usr/bin/env scheme-script
;; -*- mode: scheme; coding: utf-8 -*- !#
;; Copyright (c) 2020 Guy Q. Schemer
;; SPDX-License-Identifier: MIT
#!r6rs

(import (rnrs (6)) (srfi :64 testing) (glew)(glut))

;; GLEW requires an openGL context to initialize.
(glutInit '() 0)
(glutCreateWindow "glut-test")

(test-begin "glewInit succeeds")
(test-equal 0 (glewInit))
(test-end)

(test-begin "glewIsSupported returns an integer")
(test-assert (integer?  (glewIsSupported "GL_VERSION_1_3")))
(test-end)

(test-begin "glewGetErrorString returns string")
(test-equal (glewGetErrorString 0) "No error")
(test-end)

(exit (if (zero? (test-runner-fail-count (test-runner-get))) 0 1))
