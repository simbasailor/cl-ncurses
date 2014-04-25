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
;; COLOR ;;
;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines:  start_color, init_pair, init_color, has_colors,                 ;;
;;            can_change_color, color_content, pair_content,                  ;;
;;            COLOR_PAIR                                                      ;;
;; Purpose:   Curses color manipulation routines.                             ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C Prototype: int start_color(void);
(def :int ()
     "start_color")

; C Prototype: int COLOR_PAIR(int pair);
#-(or win32 mswindows)
(def :int ((pair :int))
     "COLOR_PAIR")
;;; Win32 TODO: implement defun based on macro in pdcurses' curses.h


; C Prototype: int init_pair(short pair, short f, short b);
(def :int ((pair :short)
	   (f    :short)
	   (b    :short))
     "init_pair")

; C Prototype: int init_color(short color, short r, short g, short b);
(def :int ((color :short)
	   (r     :short)
	   (g     :short)
	   (b     :short))
     "init_color")

; C Prototype: bool has_colors(void);
(def bool ()
     "has_colors"
     "can_change_color")

; C Prototype: int color_content(short color, short *r, short *g, short *b);
(def :int ((color :int)
	   (r     (*  :short))
	   (g     (*  :short))
	   (b     (*  :short)))
     "color_content")

; C Prototype: int pair_content(short pair, short *f, short *b);
(def :int ((pair :short)
	   (f    (* :short))
	   (b    (* :short)))
     "pair_content")
