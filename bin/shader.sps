#!/usr/bin/env scheme-script
;; -*- mode: scheme; coding: utf-8 -*- !#
;; Copyright (c) 2020 Guy Q. Schemer
;; SPDX-License-Identifier: MIT
#!r6rs

(import (rnrs (6))(chezscheme) (glew)(glu)(glut))

(define-syntax define-array
  (syntax-rules ()
    [(_ array-name type size-name size)
     (begin
       (define size-name size)
       (define-ftype array-name
         (array size type)))]))

  (define-ftype
    (GLenum int)
    (GLbitfield int)
    (GLuint unsigned-int) 
    (GLint int)
    (GLsizei int)
    (GLboolean unsigned-8)
    (GLbyte integer-8)
    (GLshort short)
    (GLubyte unsigned-8)
    (GLushort unsigned-short)
    (GLulong unsigned-long)
    (GLfloat float)
    (GLclampf float)
    (GLdouble double)
    (GLclampd double))


(define (make-vao-array numvaos) 
  (make-ftype-pointer unsigned (foreign-alloc (* (ftype-sizeof unsigned) numvaos))))

(define vao (make-vao-array 1));

(display vao)

;; (define-array vao-array GLuint num-vaos 1)

;; (define vao-address (foreign-alloc (ftype-sizeof vao-array)))
;; (define vao (make-ftype-pointer vao-array vao-address))

(define (createShaderProgram)
  (let* ((vshaderSource (string-append "#version 430  \n"
                                       "void main(void)  \n"
                                      "{ gl_Position = vec4(0.0, 0.0, 0.0, 1.0);}"))
         (fshaderSource (string-append "#version 430  \n"
                                       "out vec4 color; \n"
                                       "void main(void) \n"
                                       "{ color = vec4(0.0, 0.0, 1.0, 1.0); }"))
         (vShader (glCreateShader GL_VERTEX_SHADER))
         (fShader (glCreateShader GL_FRAGMENT_SHADER))
         (vfProgram (glCreateProgram)))
    (glShaderSource vShader 1 vshaderSource 0)
    (glShaderSource fShader 1 fshaderSource 0)
    (glCompileShader vShader)
    (glCompileShader fShader)

    (glAttachShader vfProgram vShader)
    (glAttachShader vfProgram fShader)
    (glLinkProgram vfProgram)
      
    vfProgram))

;;(define my-vao vao)

(define renderingProgram (createShaderProgram))
(define (init)
 
  (glGenVertexArrays 1 (* vao))
  (glBindVertexArray (foreign-ref 'unsigned (* vao) 0))
  (glutInitDisplayMode (logior GLUT_DEPTH GLUT_DOUBLE GLUT_RGBA))
  (glutInitWindowSize 640 640)
  (glutInitWindowPosition 100 100)
  (glutCreateWindow "OpenGL Test"))

(define (processNormalKeys key x y)
  (if (eq? key 27) (exit)))

(define (renderScene)
  (glUseProgram renderingProgram)
  (glDrawArrays GL_POINTS 0 1)
  #;(glClearColor 1.0 0.0 0.0 1.0)
  #;(glClear (logior GL_COLOR_BUFFER_BIT GL_DEPTH_BUFFER_BIT))
  
  #;(glutSwapBuffers))

(define (changeSize w original-height) 
  (let* ((h (cond ((eq? 0 original-height) 1)(else original-height)))
         (ratio (/ (* w 1.0) h)))
    (glMatrixMode GL_PROJECTION)
    (glLoadIdentity)
    (glViewport 0 0 w h)
    (gluPerspective 45.0 ratio 1.0 1000.0)
    (glMatrixMode GL_MODELVIEW)))

(glutInit (length (command-line)) (command-line))
(init)
(glutDisplayFunc renderScene)
(glutReshapeFunc changeSize)
(glutIdleFunc renderScene)
(glutKeyboardFunc processNormalKeys)
;; (glutSpecialFunc pressSpecialKey)
;; (glutIgnoreKeyRepeat 1)
;; (glutSpecialUpFunc releaseSpecialKey)
(glEnable GL_DEPTH_TEST)
(glutMainLoop)
