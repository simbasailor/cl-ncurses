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

;;;;;;;;;;;;;
;; INCHSTR ;;
;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: inchstr, inchnstr, winchstr, winchnstr, mvinchstr, mvinchnstr,   ;;
;;           mvwinchstr, mvwinchnstr                                          ;;
;; Purpose:  Get a string of characters (and attributes) from a curses        ;;
;;           window.                                                          ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C-prototype: int inchstr(chtype *chstr);
(def :int ((chstr char-ptr))
     "inchstr")

; C-prototype: int inchnstr(chtype *chstr, int n);
(def :int ((chstr char-ptr)
	   (n     :int))
     "inchnstr")

; C-prototype: int winchstr(WINDOW *win, chtype *chstr);
(def :int ((win   window-ptr)
	   (chstr char-ptr))
     "winchstr")

; C-prototype: int winchnstr(WINDOW *win, chtype *chstr, int n);
(def :int ((win   window-ptr)
	   (chstr char-ptr)
	   (n     :int))
     "winchnstr")

; C-prototype: int mvinchstr(int y, int x, chtype *chstr);
(def :int ((y     :int)
	   (x     :int)
	   (chstr char-ptr))
     "mvinchstr")

; C-prototype: int mvinchnstr(int y, int x, chtype *chstr, int n);
(def :int ((y     :int)
	   (x     :int)
	   (chstr char-ptr)
	   (n     :int))
     "mvinchnstr")

; C-prototype: int mvwinchstr(WINDOW *win, int y, int x, chtype *chstr);
(def :int ((win   window-ptr)
	   (y     :int)
	   (x     :int)
	   (chstr char-ptr))
     "mvwinchstr")

; C-prototype: int mvwinchnstr(WINDOW *win, int y, int x, chtype *chstr, int n);
(def :int ((win   window-ptr)
	   (y     :int)
	   (x     :int)
	   (chstr char-ptr)
	   (n     :int))
     "mvwinchnstr")


