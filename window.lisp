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
;; WINDOW ;;
;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: newwin, delwin, mvwin, subwin, derwin, mvderwin, dupwin,         ;
;;           wsyncup, syncok, wcursyncup, wsyncdown                           ;;
;; Purpose:  Create curses windows.                                           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C-prototype: WINDOW *newwin(int nlines, int ncols, int begin_y, int begin_x);
(def window-ptr ((nlines  :int)
		 (ncols   :int)
		 (begin_y :int)
		 (begin_x :int))
     "newwin")

; C-prototype: int    delwin(WINDOW *win);
(def :int ((win window-ptr))
     "delwin")

; C-prototype: void   wsyncup(WINDOW *win);
; C-prototype: void   wcursyncup(WINDOW *win);
; C-prototype: void   wsyncdown(WINDOW *win);
(def :void ((win window-ptr))
     "wsyncup"
     "wcursyncup"
     "wsyncdown")

; C-prototype: int    mvwin(WINDOW *win, int y, int x);
; C-prototype: int    mvderwin(WINDOW *win, int par_y, int par_x);
(def :int ((win window-ptr)
	   (y   :int)
	   (x   :int))
     "mvwin"
     "mvderwin")

; C-prototype: WINDOW *subwin(WINDOW *orig, int nlines, int ncols, int begin_y, int begin_x);
; C-prototype: WINDOW *derwin(WINDOW *orig, int nlines, int ncols, int begin_y, int begin_x);
(def window-ptr ((orig    window-ptr)
		 (nlines  :int)
		 (ncols   :int)
		 (begin_y :int)
		 (begin_x :int))
     "subwin"
     "derwin")

; C-prototype: WINDOW *dupwin(WINDOW *win);
(def window-ptr ((win window-ptr))
     "dupwin")

; C-prototype: int syncok(WINDOW *win, bool bf);
(def :int ((win window-ptr)
	   (bf  bool))
     "syncok")


