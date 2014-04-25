;;;; This file is part of cl-ncurses, an ncurses interface for Common Lisp,
;;;; Copyright (c) 2004 Marcelo Ramos <mramos@montevideo.com.uy>
;;;;
;;;; Permission is hereby granted, free of charge, to any person obtaining
;;;; a copy of this software and associated documentation files (the
;;;; "Software"), to deal in the Software without restriction, including
;;;; without limitation the rights to use, copy, modify, merge, publish,
;;;; distribute, sublicense, and/or sell copies of the Software, and to
;;;; permit persons to whom the Software is furnished to do so, subject to
;;;; the following conditions:
;;;;
;;;; The above copyright notice and this permission notice shall be included
;;;; in all copies or substantial portions of the Software.
;;;;
;;;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;;;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;;;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
;;;; IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
;;;; CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
;;;; TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
;;;; SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

;;;;;;;;;;;
;; GETYX ;;
;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: getyx, getparyx, getbegyx, getmaxyx                              ;;
;; Purpose:  Get curses cursor and window coordinates.                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C Prototype: void getyx(WINDOW *win, int y, int x);
; C Prototype: void getparyx(WINDOW *win, int y, int x);
; C Prototype: void getbegyx(WINDOW *win, int y, int x);
; C Prototype: void getmaxyx(WINDOW *win, int y, int x);
; C Prototype: int getcurx(const WINDOW *);			
; C Prototype: int getcury(const WINDOW *);			
; C Prototype: int getbegx(const WINDOW *);			
; C Prototype: int getbegy(const WINDOW *);			
; C Prototype: int getmaxx(const WINDOW *);			
; C Prototype: int getmaxy(const WINDOW *);			
; C Prototype: int getparx(const WINDOW *);			
; C Prototype: int getpary(const WINDOW *);			

;;; As of ncurses 5.6 following are functions.  We can now define the
;;; getyx-style macros without using any C code!
(def :int ((win window-ptr))
  "getcurx"
  "getcury"
  "getbegx"
  "getbegy"
  "getmaxx"
  "getmaxy"
  "getparx"
  "getpary")

(defmacro generate-getyx-macro (name yfun xfun values-function-name)
  `(progn
     (defmacro ,name (win y x)
       (let ((win-value (gensym)))
         `(let ((,win-value ,win))
            (setf ,y (,',yfun ,win-value))
            (setf ,x (,',xfun ,win-value)))))

     (defun ,values-function-name (win)
       (values (,yfun win) (,xfun win)))

     (export '(,name ,values-function-name))))

(defmacro generate-getyx-macros (&rest names)
  `(progn
     ,@(mapcar #'(lambda (args)
                   `(generate-getyx-macro ,@args))
               (group names 4))))

(generate-getyx-macros getyx    getcury getcurx get-yx
                       getparyx getpary getparx get-paryx
                       getmaxyx getmaxy getmaxx get-maxyx
                       getbegyx getbegy getbegx get-begyx)

