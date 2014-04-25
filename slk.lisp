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

;;;;;;;;;
;; SLK ;;
;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: slk_init, slk_set, slk_refresh, slk_noutrefresh, slk_label,      ;;
;;           slk_clear, slk_restore, slk_touch, slk_attron, slk_attrset,      ;;
;;           slk_attroff, slk_attr_on, slk_attr_set, slk_attr_off,            ;;
;;           slk_attr, slk_color                                              ;;
;; Purpose:  Curses soft label routines.                                      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C-prototype: int slk_init(int fmt);
(def :int ((fmt :int))
     "slk_init")

; C-prototype: int slk_set(int labnum, const char *label, int fmt);
(def :int ((labnum :int)
	   (label  :cstring)
	   (fmt    :int))
     "slk_set")

; C-prototype: int slk_refresh(void);
; C-prototype: int slk_noutrefresh(void);
; C-prototype: int slk_clear(void);
; C-prototype: int slk_restore(void);
; C-prototype: int slk_touch(void);
(def :int ()
     "slk_refresh"
     "slk_noutrefresh"
     "slk_clear"
     "slk_restore"
     "slk_touch")

; C-prototype: char *slk_label(int labnum);
(def :cstring ((labnum :int))
     "slk_label")

; C-prototype: int slk_attron(const chtype attrs);
; C-prototype: int slk_attroff(const chtype attrs);
; C-prototype: int slk_attrset(const chtype attrs);
(def :int ((attrs chtype))
     "slk_attron"
     "slk_attroff"
     "slk_attrset")

; TODO
; C-prototype: int slk_attr_on(attr_t attrs, void* opts);
; C-prototype: int slk_attr_off(const attr_t attrs, void * opts);
; C-prototype: int slk_attr_set(const attr_t attrs, short color_pair_number, void* opts);
; C-prototype: attr_t slk_attr(void);

; C-prototype: int slk_color(short color_pair_number);
(def :int ((color_pair_number :short))
     "slk_color")
