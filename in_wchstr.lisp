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
;; IN_WCHSTR ;;
;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: in_wchstr, in_wchnstr, win_wchstr, win_wchnstr, mvin_wchstr,     ;;
;;           mvin_wchnstr, mvwin_wchstr, mvwin_wchnstr                        ;;
;; Purpose:  Get an array of complex characters and renditions from a curses  ;;
;;           window                                                           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; TODO
; C-prototype: int in_wchstr(cchar_t *wchstr);
; C-prototype: int in_wchnstr(cchar_t *wchstr, int n);
; C-prototype: int win_wchstr(WINDOW *win, cchar_t *wchstr);
; C-prototype: int win_wchnstr(WINDOW *win, cchar_t *wchstr, int n);
; C-prototype: int mvin_wchstr(int y, int x, cchar_t *wchstr);
; C-prototype: int mvin_wchnstr(int y, int x, cchar_t *wchstr, int n);
; C-prototype: int mvwin_wchstr(WINDOW *win, int y, int x, cchar_t *wchstr);
; C-prototype: int mvwin_wchnstr(WINDOW *win, int y, int x, cchar_t *wchstr, int n);

