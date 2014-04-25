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

;;;;;;;;;;;;;;
;; INS_WSTR ;;
;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: ins_wstr, ins_nwstr, wins_wstr, wins_nwstr, mvins_wstr,          ;;
;;           mvins_nwstr, mvwins_wstr, mvwins_nwstr                           ;;
;; Purpose:  Insert a wide-character string into a curses window.             ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; TODO
; C-prototype: int ins_wstr(const wchar_t *wstr);
; C-prototype: int ins_nwstr(const wchar_t *wstr, int n);
; C-prototype: int wins_wstr(WINDOW *win, const wchar_t *wstr);
; C-prototype: int wins_nwstr(WINDOW *win, const wchar_t *wstr, int n);
; C-prototype: int mvins_wstr(int y, int x, const wchar_t *wstr);
; C-prototype: int mvins_nwstr(int y, int x, const wchar_t *wstr, int n);
; C-prototype: int mvwins_wstr(WINDOW *win, int y, int x, const wchar_t *wstr);
; C-prototype: int mvwins_nwstr(WINDOW *win, int y, int x, const wchar_t *wstr, int n);

