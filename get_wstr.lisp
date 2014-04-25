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
;; GET_WSTR ;;
;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: get_wstr, getn_wstr, wget_wstr, wgetn_wstr, mvget_wstr,          ;;
;;           mvgetn_wstr, mvwget_wstr, mvwgetn_wstr                           ;;
;; Purpose:  Get an array of wide characters from a curses terminal keyboard. ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; TODO
; C Prototype: int get_wstr(wint_t *wstr);
; C Prototype: int getn_wstr(wint_t *wstr, int n);
; C Prototype: int wget_wstr(WINDOW *win, wint_t *wstr);
; C Prototype: int wgetn_wstr(WINDOW *win, wint_t *wstr, int n);
; C Prototype: int mvget_wstr(int y, int x, wint_t *wstr);
; C Prototype: int mvgetn_wstr(int y, int x, wint_t *wstr, int n);
; C Prototype: int mvwget_wstr(WINDOW *win, int y, int x, wint_t *wstr);
; C Prototype: int mvwgetn_wstr(WINDOW *win, int y, int x, wint_t *wstr, int n);

