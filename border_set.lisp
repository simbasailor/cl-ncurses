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
;; BORDER_SET ;;
;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: border_set, wborder_set, box_set, hline_set, whline_set,         ;;
;;           mvhline_set, mvwhline_set, vline_set, wvline_set, mvvline_set,   ;;
;;           mvwvline_set                                                     ;;
;; Purpose:  Create curses borders or lines using complex characters and      ;;
;;           renditions.                                                      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; TODO
; cchar_t * ???
; C Prototype: int border_set(
;	  const cchar_t *ls, const cchar_t *rs,
;	  const cchar_t *ts, const cchar_t *bs,
;         const cchar_t *tl, const cchar_t *tr,
;	  const cchar_t *bl, const cchar_t *br );
; C Prototype: int wborder_set(
;	  WINDOW *win,
;	  const cchar_t *ls, const cchar_t *rs,
;	  const cchar_t *ts, const cchar_t *bs,
;	  const cchar_t *tl, const cchar_t *tr,
;	  const cchar_t *bl, const cchar_t *br);
; C Prototype: int box_set(
;	  WINDOW *win,
;	  const cchar_t *verch,
;	  const cchar_t *horch);
; C Prototype: int hline_set(
;	  const cchar_t *wch, int n);
; C Prototype: int whline_set(
;	  WINDOW *win,
;	  const cchar_t *wch, int n);
; C Prototype: int mvhline_set(
;         int y, int x,
;	  const cchar_t *wch, int n);
; C Prototype: int mvwhline_set(
;	  WINDOW *win,
;         int y, int x,
;	  const cchar_t *wch, int n);
; C Prototype: int vline_set(
;	  const cchar_t *wch, int n);
; C Prototype: int wvline_set(
;	  WINDOW *win,
;	  const cchar_t *wch, int n);
; C Prototype: int mvvline_set(
;         int y, int x,
;	  const cchar_t *wch, int n);
; C Prototype: int mvwvline_set(
;	  WINDOW *win,
;         int y, int x,
;	  const cchar_t *wch, int n);

