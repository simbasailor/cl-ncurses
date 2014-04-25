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
;; TERMINFO ;;
;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: del_curterm, mvcur, putp, restartterm, set_curterm, setterm,     ;;
;;           setupterm, tigetflag, tigetnum, tigetstr, tparm, tputs,          ;;
;;           vid_attr, vid_puts, vidattr, vidputs                             ;;
;; Purpose:  Curses interfaces to terminfo database.                          ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; TODO
; C-prototype: int setupterm(char *term, int fildes, int *errret);
; C-prototype: int setterm(char *term);
; C-prototype: TERMINAL *set_curterm(TERMINAL *nterm);
; C-prototype: int del_curterm(TERMINAL *oterm);
; C-prototype: int restartterm(const char *term, int fildes, int *errret);
; C-prototype: char *tparm(char *str, ...);
; C-prototype: int tputs(const char *str, int affcnt, int (*putc)(int));
; C-prototype: int putp(const char *str);
; C-prototype: int vidputs(chtype attrs, int (*putc)(int));
; C-prototype: int vidattr(chtype attrs);
; C-prototype: int vid_puts(attr_t attrs, short pair, void *opts, int (*putc)(char));
; C-prototype: int vid_attr(attr_t attrs, short pair, void *opts);
; C-prototype: int mvcur(int oldrow, int oldcol, int newrow, int newcol);
; C-prototype: int tigetflag(char *capname);
; C-prototype: int tigetnum(char *capname);
; C-prototype: char *tigetstr(char *capname);

