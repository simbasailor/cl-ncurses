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
;; GETCH ;;
;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: getch, wgetch, mvgetch, mvwgetch, ungetch, has_key               ;;
;; Purpose:  Get (or push back) characters from curses terminal keyboard      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C Prototype: int wgetch(WINDOW *win);
(def :int ((win window-ptr))
     "wgetch")

; C Prototype: int getch(void);
#-(or win32 mswindows) ;; macro in pdcurses
(def :int ()
     "getch")

#+(or win32 mswindows)
(defun getch ()
  (wgetch *stdscr*))

; C Prototype: int mvgetch(int y, int x);
(def :int ((y :int)
	   (x :int))
     "mvgetch")

; C Prototype: int mvwgetch(WINDOW *win, int y, int x);
(def :int ((win window-ptr)
	   (y   :int)
	   (x   :int))
     "mvwgetch")

; C Prototype: int ungetch(int ch);
; C Prototype: int has_key(int ch);
(def :int ((ch :int))
  #-(or win32 mswindows)
  "ungetch"
  #+(or win32 mswindows)
  "PDC_ungetch"
  "has_key")

#+(or win32 mswindows)
(defun ungetch (ch)
  (PDC_ungetch ch))



