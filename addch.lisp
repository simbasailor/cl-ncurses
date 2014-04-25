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

;;;;;;;;;;;
;; ADDCH ;;
;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: addch, waddch, mvaddch, mvwaddch, echochar, wechochar            ;;
;; Purpose:  add a character (with attributes) to a curses window, then       ;;
;;           advance the cursor                                               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C Prototype: int addch(const chtype ch);
; C Prototype: int echochar(const chtype ch);
(def :int ((ch chtype))
     "addch"
     "echochar")

; C Prototype: int waddch(WINDOW *win, const chtype ch);
; C Prototype: int wechochar(WINDOW *win, const chtype ch);
(def :int ((win window-ptr) (ch chtype))
     "waddch"
     "wechochar")

; C Prototype: int mvaddch(int y, int x, const chtype ch);
(def :int ((y  :int)
	   (x  :int)
	   (ch chtype))
     "mvaddch")

; C Prototype: int mvwaddch(WINDOW *win, int y, int x, const chtype ch);
(def :int ((win window-ptr)
	   (y   :int)
	   (x   :int)
	   (ch  chtype))
     "mvwaddch")




