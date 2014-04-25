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

;;;;;;;;;;;;
;; ADDSTR ;;
;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: addstr, addnstr, waddstr, waddnstr, mvaddstr, mvaddnstr,         ;; 
;;           mvwaddstr, mvwaddnstr                                            ;;
;; Purpose:  add a string of characters to a curses window and advance        ;;
;;           cursor                                                           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C Prototype: int addstr(const char *str);
(def :int ((str :cstring))
     "addstr")

; C Prototype: int addnstr(const char *str, int n);
(def :int ((str :cstring)
	   (n   :int))
     "addnstr")

; C Prototype: int waddstr(WINDOW *win, const char *str);
(def :int ((win window-ptr)
	   (str :cstring))
     "waddstr")

; C Prototype: int waddnstr(WINDOW *win, const char *str, int n);
(def :int ((win window-ptr)
	   (str :cstring)
	   (n   :int))
     "waddnstr")

; C Prototype: int mvaddstr(int y, int x, const char *str);
(def :int ((y   :int)
	   (x   :int)
	   (str :cstring))
     "mvaddstr")
 
; C Prototype: int mvaddnstr(int y, int x, const char *str, int n);
(def :int ((y   :int)
	   (x   :int)
	   (str :cstring)
	   (n   :int))
     "mvaddnstr")
  
; C Prototype: int mvwaddstr(WINDOW *win, int y, int x, const char *str);
(def :int ((win window-ptr)
	   (y   :int)
	   (x   :int)
	   (str :cstring))
     "mvwaddstr")
; C Prototype: int mvwaddnstr(WINDOW *win, int y, int x, const char *str, int n);
(def :int ((win window-ptr)
	   (y   :int)
	   (x   :int)
	   (str :cstring)
	   (n   :int))
     "mvwaddnstr")

