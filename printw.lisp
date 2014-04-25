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

;;;;;;;;;;;;
;; PRINTW ;;
;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;; Routines: printw, wprintw, mvprintw, mvwprintw, vwprintw, vw_printw        ;;
;; Purpose:  Print formatted output in curses windows.                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; TODO: support a variable number of args
; C-prototype: int printw(const char *fmt, ...);
(def :int ((fmt :cstring))
     "printw")


; C-prototype: int wprintw(WINDOW *win, const char *fmt, ...);
(def :int ((win window-ptr)
           (fmt :cstring))
     "wprintw")

; C-prototype: int mvprintw(int y, int x, const char *fmt, ...);
(def :int ((y   :int)
	   (x   :int)
	   (fmt :cstring))
     "mvprintw")

; C-prototype: int mvwprintw(WINDOW *win, int y, int x, const char *fmt, ...);
(def :int ((win window-ptr)
	   (y   :int)
	   (x   :int)
	   (fmt :cstring))
     "mvwprintw")

; C-prototype: int vwprintw(WINDOW *win, const char *fmt, va_list varglist);
; C-prototype: int vw_printw(WINDOW *win, const char *fmt, va_list varglist);

