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

;;;;;;;;;;;;
;; BORDER ;;
;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: border, wborder, box, hline, whline, vline, wvline, mvhline,     ;;
;;           mvwhline, mvvline, mvwvline                                      ;;
;; Purpose:  Create curses borders, horizontal and vertical lines.            ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C Prototype: int border(chtype ls, chtype rs, chtype ts, chtype bs, chtype tl,
;                         chtype tr, chtype bl, chtype br);
(def :int ((ls  chtype)
	   (rs  chtype)
	   (ts  chtype)
	   (bs  chtype)
	   (tl  chtype)
	   (tr  chtype)
	   (bl  chtype)
	   (br  chtype))
     "border")

; C Prototype: int wborder(WINDOW *win, chtype ls, chtype rs, chtype ts,
;                                       chtype bs, chtype tl, chtype tr,
;                                       chtype bl, chtype br);
(def :int ((win window-ptr)
	   (ls  chtype)
	   (rs  chtype)
	   (ts  chtype)
	   (bs  chtype)
	   (tl  chtype)
	   (tr  chtype)
	   (bl  chtype)
	   (br  chtype))
     "wborder")

; C Prototype: int box(WINDOW *win, chtype verch, chtype horch);
(def :int ((win   window-ptr)
	   (verch chtype)
	   (horch chtype))
     "box")

; C Prototype: int hline(chtype ch, int n);
; C Prototype: int vline(chtype ch, int n);
(def :int ((ch chtype)
	   (n  :int))
     "hline"
     "vline")

; C Prototype: int whline(WINDOW *win, chtype ch, int n);
; C Prototype: int wvline(WINDOW *win, chtype ch, int n);
(def :int ((win window-ptr)
	   (ch  chtype)
	   (n   :int))
     "whline"
     "wvline")

; C Prototype: int mvhline(int y, int x, chtype ch, int n);
; C Prototype: int mvvline(int y, int x, chtype ch, int n);
(def :int ((y  :int)
	   (x  :int)
	   (ch chtype)
	   (n  :int))
     "mvhline"
     "mvvline")

; C Prototype: int mvwhline(WINDOW *, int y, int x, chtype ch, int n);
; C Prototype: int mvwvline(WINDOW *, int y, int x, chtype ch, int n);
(def :int ((win window-ptr)
	   (y  :int)
	   (x  :int)
	   (ch chtype)
	   (n  :int))
     "mvwhline"
     "mvwvline")


