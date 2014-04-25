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
;; ADDCHSTR ;;
;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: addchstr,  addchnstr,  waddchstr,  waddchnstr, mvaddchstr,       ;;
;;           mvaddchnstr, mvwaddchstr, mvwaddchnstr                           ;;
;; Purpose:  Add a string of characters (and attributes) to a curses window.  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; TODO
; C Prototype: int addchstr(const chtype *chstr);
; C Prototype: int addchnstr(const chtype *chstr, int n);
; C Prototype: int waddchstr(WINDOW *win, const chtype *chstr);

; C Prototype: int waddchnstr(WINDOW *win, const chtype *chstr, int n);
; C Prototype: int mvaddchstr(int y, int x, const chtype *chstr);
; C Prototype: int mvaddchnstr(int y, int x, const chtype *chstr, int n);
; C Prototype: int mvwaddchstr(WINDOW *win, int y, int x, const chtype *chstr);
; C Prototype: int mvwaddchnstr(WINDOW *win, int y, int x, const chtype *chstr, int n);

