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

;;;;;;;;;;;;;;;;;;;;;;;;;
;; NCURSES'S VARIABLES ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

(export '(*COLORS* *COLOR-PAIRS* *LINES* *COLS* *TABSIZE* 
	  *ECSDELAY* *STDSCR* *CURSCR* *NEWSCR*))

(def-foreign-var ("COLORS" *COLORS*) :int "cl-ncurses")
(def-foreign-var ("COLOR_PAIRS" *COLOR-PAIRS*) :int "cl-ncurses")

(def-foreign-var ("LINES" *LINES*) :int "cl-ncurses")
(def-foreign-var ("COLS" *COLS*) :int "cl-ncurses")
(def-foreign-var ("TABSIZE" *TABSIZE*) :int "cl-ncurses")
(def-foreign-var ("ESCDELAY" *ESCDELAY*) :int "cl-ncurses")

(def-foreign-var ("stdscr" *STDSCR*) window-ptr "cl-ncurses")
(def-foreign-var ("curscr" *CURSCR*) window-ptr "cl-ncurses")
(def-foreign-var ("newscr" *NEWSCR*) window-ptr "cl-ncurses")


