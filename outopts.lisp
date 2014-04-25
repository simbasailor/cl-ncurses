;;;; This file is part of cl-ncurses, an ncurses interface for Common Lisp,
;;;; Copyright (c) 2003 Nikodemus Siivola
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

;;;;;;;;;;;;;
;; OUTOPTS ;;
;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: clearok, idlok, idcok, immedok, leaveok, setscrreg, wsetscrreg,  ;;
;;           scrollok, nl, nonl                                               ;;
;; Purpose:  Curses output options.                                           ;;     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C-prototype: int clearok(WINDOW *win, bool bf);
; C-prototype: int idlok(WINDOW *win, bool bf);
; C-prototype: int leaveok(WINDOW *win, bool bf);
; C-prototype: int scrollok(WINDOW *win, bool bf);
(def :int ((win window-ptr)
	   (bf  bool))
     "clearok"
     "idlok"
     "leaveok"
     "scrollok")

; C-prototype: void idcok(WINDOW *win, bool bf);
; C-prototype: void immedok(WINDOW *win, bool bf);
(def :void ((win window-ptr)
	    (bf  bool))
     "idcok"
     "immedok")

; C-prototype: int setscrreg(int top, int bot);
(def :int ((top :int)
	   (bot :int))
     "setscrreg")

; C-prototype: int wsetscrreg(WINDOW *win, int top, int bot);
(def :int ((win window-ptr)
	   (top :int)
	   (bot :int))
     "wsetscrreg")

; C-prototype: int nl(void);
; C-prototype: int nonl(void);
(def :int ()
     "nl"
     "nonl")

