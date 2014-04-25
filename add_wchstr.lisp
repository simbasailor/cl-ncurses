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

;;;;;;;;;;;;;;;;
;; ADD_WCHSTR ;;
;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: add_wchstr, add_wchnstr, wadd_wchstr, wadd_wchnstr,              ;;   
;;           mvadd_wchstr, mvadd_wchnstr, mvwadd_wchstr, mvwadd_wchnstr       ;;
;; Purpose:  Add an array of complex characters (and attributes) to a curses  ;;
;;           window.                                                          ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; TODO
; C Prototype: int add_wchstr(const cchar_t *wchstr);
; C Prototype: int add_wchnstr(const cchar_t *wchstr, int n);
; C Prototype: int wadd_wchstr(WINDOW * win, const cchar_t *wchstr);
; C Prototype: int wadd_wchnstr(WINDOW * win, const cchar_t *wchstr, int n);
; C Prototype: int mvadd_wchstr(int y, int x, const cchar_t *wchstr);
; C Prototype: int mvadd_wchnstr(int y, int x, const cchar_t *wchstr, int n);
; C Prototype: int mvwadd_wchstr(WINDOW *win, int y, int x, const cchar_t *wchstr);
; C Prototype: int mvwadd_wchnstr(WINDOW *win, int y, int x, const cchar_t *wchstr, int n);

