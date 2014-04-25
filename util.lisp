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

;;;;;;;;;;
;; UTIL ;;
;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: delay_output, filter, flushinp, getwin, key_name, keyname,       ;;
;;           putwin, unctrl, use_env, wunctrl                                 ;;
;; Purpose:  Miscellaneous curses utility routines.                           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C-prototype: char *unctrl(chtype c);
(def char-ptr ((c chtype))
     "unctrl")

; C-prototype: char *keyname(int c);
(def char-ptr ((c :int))
     "keyname")

; C-prototype: void filter(void);
(def :void ()
     "filter")

; C-prototype: void use_env(bool f);
(def :void ((f bool))
     "use_env")

; C-prototype: int delay_output(int ms);
(def :int ((ms :int))
     "delay_output")

; C-prototype: int flushinp(void);
(def :int ()
     "flushinp")

; TODO
; C-prototype: char *wunctrl(cchar_t *c);
; C-prototype: char *key_name(wchar_t w);
; C-prototype: int putwin(WINDOW *win, FILE *filep);
; C-prototype: WINDOW *getwin(FILE *filep);

