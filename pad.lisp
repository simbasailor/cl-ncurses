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

;;;;;;;;;
;; PAD ;;
;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: newpad, subpad, prefresh, pnoutrefresh, pechochar                ;;
;; Purpose:   Create and display curses pads.                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C-prototype: WINDOW *newpad(int nlines, int ncols);
(def window-ptr ((nlines :int)
		 (ncols  :int))
     "newpad")

; C-prototype: WINDOW *subpad(WINDOW *orig, int nlines, int ncols, int begin_y,
;                                           int begin_x);
(def window-ptr ((orig    window-ptr)
		 (nlines  :int)
		 (ncols   :int)
		 (begin_y :int)
		 (begin_x :int))
     "subpad")

; C-prototype: int prefresh(WINDOW *pad, int pminrow, int pmincol, 
;                                        int sminrow, int smincol, 
;                                        int smaxrow, int smaxcol);
(def :int ((pad     window-ptr)
	   (pminrow :int)
	   (pmincol :int)
	   (sminrow :int)
	   (smincol :int)
	   (smaxrow :int)
	   (smaxcol :int))
     "prefresh")

; C-prototype: int pnoutrefresh(WINDOW *pad, int pminrow, int pmincol, 
;                                            int sminrow, int smincol,
;                                            int smaxrow, int smaxcol);
(def :int ((pad     window-ptr)
	   (pminrow :int)
	   (pmincol :int)
	   (sminrow :int)
	   (smincol :int)
	   (smaxrow :int)
	   (smaxcol :int))
     "pnoutrefresh")

; C-prototype: int pechochar(WINDOW *pad, chtype ch);
(def :int ((pad window-ptr)
	   (ch  chtype))
     "pechochar")


