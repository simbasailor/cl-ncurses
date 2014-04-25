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

;;;;;;;;;;;;;;;
;; TERMATTRS ;;
;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: baudrate, erasechar, erasewchar, has_ic, has_il, killchar,       ;;
;;           killwchar, longname, term_attrs, termattrs, termname             ;;
;; Purpose:  Curses environment query routines.                               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C-prototype: int baudrate(void);
(def :int ()
     "baudrate")

; C-prototype: char erasechar(void);
; C-prototype: char killchar(void);
(def :char ()
     "erasechar"
     "killchar")

; TODO
; C-prototype: int erasewchar(wchar_t *ch);

; C-prototype: bool has_ic(void);
; C-prototype: bool has_il(void);
(def bool ()
     "has_ic"
     "has_il")

; TODO
; C-prototype: int killwchar(wchar_t *ch);
; C-prototype: attr_t term_attrs(void);

; C-prototype: chtype termattrs(void);
(def chtype ()
     "termattrs")

; C-prototype: char *longname(void);
; C-prototype: char *termname(void);
(def char-ptr ()
     "longname"
     "termname")
