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

;;;;;;;;;;;;
;; KERNEL ;;
;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: def_prog_mode, def_shell_mode, reset_prog_mode,                  ;;
;;           reset_shell_mode, resetty, savetty, getsyx, setsyx, ripoffline,  ;;
;;           curs_set, napms                                                  ;;
;; Purpose:  Low-level curses routines                                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C-prototype: int def_prog_mode(void);
; C-prototype: int def_shell_mode(void);
; C-prototype: int reset_prog_mode(void);
; C-prototype: int reset_shell_mode(void);
; C-prototype: int resetty(void);
; C-prototype: int savetty(void);
(def :int ()
     "def_prog_mode"
     "def_shell_mode"
     "reset_prog_mode"
     "reset_shell_mode"
     "resetty"
     "savetty")

; C-prototype: void getsyx(int y, int x); <-- MACRO
; C-prototype: void setsyx(int y, int x); <-- MACRO
(def :void ((y :int)
	    (x :int))
     ;"getsyx"
     ;"setsyx")
     )

; C-prototype: int ripoffline(int line, int (*init)(WINDOW *, int));
;; TODO

; C-prototype: int curs_set(int visibility);
(def :int ((visibility :int))
     "curs_set")

; C-prototype: int napms(int ms);
(def :int ((ms :int))
     "napms")
