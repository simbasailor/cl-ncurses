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

;;;;;;;;;;;;;
;; ADDWSTR ;;
;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: addwstr, addnwstr, waddwstr, waddnwstr, mvaddwstr, mvaddnwstr,   ;;
;;           mvwaddwstr, mvwaddnwstr                                          ;;
;; Purpose:  Add a string of wide characters to a curses window and advance   ;;
;;           cursor.                                                          ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; TODO
; C Prototype: int addwstr(const wchar_t *wstr);
; C Prototype: int addnwstr(const wchar_t *wstr, int n);
; C Prototype: int waddwstr(WINDOW *win, const wchar_t *wstr);
; C Prototype: int waddnwstr(WINDOW *win, const wchar_t *wstr, int n);
; C Prototype: int mvaddwstr(int y, int x, const wchar_t *wstr);
; C Prototype: int mvaddnwstr(int y, int x, const wchar_t *wstr, int n);
; C Prototype: int mvwaddwstr(WINDOW *win, int y, int x, const wchar_t *wstr);
; C Prototype: int mvwaddnwstr(WINDOW *win, int y, int x, const wchar_t *wstr, int n);

