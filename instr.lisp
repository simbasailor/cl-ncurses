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
;; INSTR ;;
;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: instr, innstr, winstr, winnstr, mvinstr, mvinnstr, mvwinstr,     ;;
;;           mvwinnstr                                                        ;;
;; Purpose:  Get a string of characters from a curses window.                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C-prototype: int instr(char *str);
(def :int ((str :cstring))
     "instr")

; C-prototype: int innstr(char *str, int n);
(def :int ((str :cstring)
	   (n   :int))
     "innstr")

; C-prototype: int winstr(WINDOW *win, char *str);
(def :int ((win window-ptr)
	   (str :cstring))
     "winstr")

; C-prototype: int winnstr(WINDOW *win, char *str, int n);
(def :int ((win window-ptr)
	   (str :cstring)
	   (n   :int))
     "winnstr")

; C-prototype: int mvinstr(int y, int x, char *str);
(def :int ((y   :int)
	   (x   :int)
	   (str :cstring))
     "mvinstr")

; C-prototype: int mvinnstr(int y, int x, char *str, int n);
(def :int ((y   :int)
	   (x   :int)
	   (str :cstring)
	   (n   :int))
     "mvinnstr")

; C-prototype: int mvwinstr(WINDOW *win, int y, int x, char *str);
(def :int ((win window-ptr)
	   (y   :int)
	   (x   :int)
	   (str :cstring))
     "mvwinstr")

; C-prototype: int mvwinnstr(WINDOW *win, int y, int x, char *str, int n);
(def :int ((win window-ptr)
	   (y   :int)
	   (x   :int)
	   (str :cstring)
	   (n   :int))
     "mvwinnstr")



