;;;; This file is part of cl-ncurses, an ncurses interface for Common Lisp,
;;;; Copyright (c) 2004 Marcelo Ramos <mramos@montevideo.com.uy>
;;;; Copyright (c) 2007 Jacob Gabrielson <jacobg23@pobox.com>
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
;; GETSTR ;;
;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: getstr, getnstr, wgetstr, wgetnstr, mvgetstr, mvgetnstr,         ;;
;;           mvwgetstr, mvwgetnstr                                            ;;
;; Purpose:  Accept character strings from curses terminal keyboard.          ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C Prototype: int getstr(char *str);
(def :int ((str :cstring))
     "getstr")

; C Prototype: int getnstr(char *str, int n);
(def :int ((str :cstring)
           (n   :int))
     "getnstr")

; C Prototype: int wgetstr(WINDOW *win, char *str);
(def :int ((win window-ptr)
           (str :cstring))
     "wgetstr")

; C Prototype: int wgetnstr(WINDOW *win, char *str, int n);
(def :int ((win window-ptr)
           (str :cstring)
           (n   :int))
     "wgetnstr")

; C Prototype: int mvgetstr(int y, int x, char *str);
(def :int ((y   :int)
           (x   :int)
           (str :cstring))
     "mvgetstr")

; C Prototype: int mvwgetstr(WINDOW *win, int y, int x, char *str);
(def :int ((win window-ptr)
           (y   :int)
           (x   :int)
           (str :cstring))
     "mvwgetstr")

; C Prototype: int mvgetnstr(int y, int x, char *str, int n);
(def :int ((y   :int)
           (x   :int)
           (str :cstring)
           (n   :int))
     "mvgetnstr")

; C Prototype: int mvwgetnstr(WINDOW *, int y, int x, char *str, int n);
(def :int ((win window-ptr)
           (y   :int)
           (x   :int)
           (str :cstring)
           (n   :int))
     "mvwgetnstr")


