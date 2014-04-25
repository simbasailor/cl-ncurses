;;;; This file is part of cl-ncurses, an ncurses interface for Common Lisp,
;;;; Copyright (c) 2003 Nikodemus Siivola
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
;; INOPTS ;;
;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: cbreak, nocbreak, echo, noecho, halfdelay, intrflush, keypad,    ;;
;;           meta, nodelay, notimeout, raw, noraw, noqiflush, qiflush,        ;;
;;           timeout, wtimeout, typeahead                                     ;;
;; Purpose:  Curses input options.                                            ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C-prototype: int cbreak(void);
; C-prototype: int nocbreak(void);
; C-prototype: int echo(void);
; C-prototype: int noecho(void);
; C-prototype: int raw(void);
; C-prototype: int noraw(void);
(def :int ()
     "cbreak"
     "nocbreak"
     "echo"
     "noecho"
     "raw"
     "noraw")

; C-prototype: int halfdelay(int tenths);
(def :int ((tenths :int))
     "halfdelay")

; C-prototype: int intrflush(WINDOW *win, bool bf);
; C-prototype: int keypad(WINDOW *win, bool bf);
; C-prototype: int meta(WINDOW *win, bool bf);
; C-prototype: int nodelay(WINDOW *win, bool bf);
; C-prototype: int notimeout(WINDOW *win, bool bf);
(def :int ((window window-ptr)
	   (bf     bool))
     "intrflush"
     "keypad"
     "meta"
     "nodelay"
     "notimeout")

; C-prototype: void noqiflush(void);
; C-prototype: void qiflush(void);
(def :void ()
     "noqiflush"
     "qiflush")

; C-prototype: void timeout(int delay);
(def :void ((delay :int))
     "timeout")

; C-prototype: void wtimeout(WINDOW *win, int delay);
(def :void ((win   window-ptr)
	    (delay :int))
     "wtimeout")

; C-prototype: int typeahead(int fd);
(def :int ((fd :int))
     "typeahead")


