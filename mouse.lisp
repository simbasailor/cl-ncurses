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

;;;;;;;;;;;
;; MOUSE ;;
;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: getmouse, ungetmouse, mousemask, wenclose, mouse_trafo,          ;;
;;           wmouse_trafo, mouseinterval                                      ;;
;; Purpose:  Mouse interface through curses.                                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; TODO
; C-prototype: typedef unsigned long mmask_t;

; C-prototype: typedef struct
;        {
; 	   short id;	     /* ID to distinguish multiple devices */
; 	   int x, y, z;      /* event coordinates */
; 	   mmask_t bstate;   /* button state bits */
;        }
;        MEVENT;
; C-prototype: int getmouse(MEVENT *event);
; C-prototype: int ungetmouse(MEVENT *event);
; C-prototype: mmask_t mousemask(mmask_t newmask, mmask_t *oldmask);
; C-prototype: bool wenclose(const WINDOW *win, int y, int x);
; C-prototype: bool mouse_trafo(int* pY, int* pX, bool to_screen);
; C-prototype: bool wmouse_trafo(const WINDOW* win, int* pY, int* pX, bool to_screen);
; C-prototype: int mouseinterval(int erval);

