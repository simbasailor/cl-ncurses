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

;;;;;;;;;;
;; ATTR ;;
;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: attroff, wattroff, attron, wattron, attrset, wattrset,           ;;
;;           color_set, wcolor_set, standend, wstandend, standout,            ;;
;;           wstandout, attr_get, wattr_get, attr_off, wattr_off, attr_on,    ;;
;;           wattr_on, attr_set, wattr_set, chgat, wchgat, mvchgat, mvwchgat, ;;
;;           PAIR_NUMBER                                                      ;;
;; Purpose:  Curses character and window attribute control routines.          ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C Prototype: int attroff(int attrs);
; C Prototype: int attron(int attrs);
; C Prototype: int attrset(int attrs);
(def :int ((attrs :int))
     "attroff"
     "attron"
     "attrset")

; C Prototype: int wattroff(WINDOW *win, int attrs);
; C Prototype: int wattron(WINDOW *win, int attrs);
; C Prototype: int wattrset(WINDOW *win, int attrs);
(def :int ((win   window-ptr)
	   (attrs :int))
     "wattroff"
     "wattron"
     "wattrset")

; C Prototype: int color_set(short color_pair_number, void* opts);
(def :int ((color_pair_number :short)
	   (opts              :pointer-void))
     "color_set")

; C Prototype: int wcolor_set(WINDOW *win, short color_pair_number, void* opts);
(def :int ((win   window-ptr)
	   (color :short)
	   (opts  :pointer-void))
     "wcolor_set")

; C Prototype: int standend(void);
; C Prototype: int standout(void);
(def :int ()
     "standend"
     "standout")

; C Prototype: int wstandend(WINDOW *win);
; C Prototype: int wstandout(WINDOW *win);
(def :int ((win window-ptr))
     "wstandend"
     "wstandout")

; TODO
; We need to define a attr_t structure type......
; C Prototype: int attr_get(attr_t *attrs, short *pair, void *opts);
; C Prototype: int wattr_get(WINDOW *win, attr_t *attrs, short *pair, void *opts);
; C Prototype: int attr_off(attr_t attrs, void *opts);
; C Prototype: int wattr_off(WINDOW *win, attr_t attrs, void *opts);
; C Prototype: int attr_on(attr_t attrs, void *opts);
; C Prototype: int wattr_on(WINDOW *win, attr_t attrs, void *opts);
; C Prototype: int attr_set(attr_t attrs, short pair, void *opts);
; C Prototype: int wattr_set(WINDOW *win, attr_t attrs, short pair, void *opts);
; C Prototype: int chgat(int n, attr_t attr, short color, const void *opts)
; C Prototype: int wchgat(WINDOW *win, int n, attr_t attr, short color, const void *opts)
; C Prototype: int mvchgat(int y, int x, int n, attr_t attr, short color, const void *opts)
; C Prototype: int mvwchgat(WINDOW *win, int y, int x, int n, attr_t attr, short color, const void *opts)

