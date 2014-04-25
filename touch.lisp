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
;; TOUCH ;;
;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: touchwin, touchline, untouchwin, wtouchln, is_linetouched,       ;;
;;           is_wintouched                                                    ;;
;; Purpose:  Curses refresh control routines                                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C-prototype: int touchwin(WINDOW *win);
; C-prototype: int untouchwin(WINDOW *win);
(def :int ((win window-ptr))
     "touchwin"
     "untouchwin")

; C-prototype: bool is_wintouched(WINDOW *win);
(def bool ((win window-ptr))
     "is_wintouched")

; C-prototype: int touchline(WINDOW *win, int start, int count);
(def :int ((win   window-ptr)
	   (start :int)
	   (count :int))
     "touchline")

; C-prototype: int wtouchln(WINDOW *win, int y, int n, int changed);
(def :int ((win     window-ptr)
	   (y       :int)
	   (n       :int)
	   (changed :int))
     "wtouchln")

; C-prototype: bool is_linetouched(WINDOW *win, int line);
(def bool ((win  window-ptr)
	   (line :int))
     "is_linetouched")


