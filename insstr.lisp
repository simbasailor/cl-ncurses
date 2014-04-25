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
;; INSSTR ;;
;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Routines: insstr, insnstr, winsstr, winsnstr, mvinsstr, mvinsnstr,         ;;
;;           mvwinsstr, mvwinsnstr                                            ;;
;; Purpose:  Insert string before cursor in a curses window.                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; C-prototype: int insstr(const char *str);
(def :int ((str :cstring))
     "insstr")

; C-prototype: int insnstr(const char *str, int n);
(def :int ((str :cstring)
	   (n   :int))
     "insnstr")

; C-prototype: int winsstr(WINDOW *win, const char *str);
(def :int ((win window-ptr)
	   (str :cstring))
     "winsstr")

; C-prototype: int winsnstr(WINDOW *win, const char *str, int n);
(def :int ((win window-ptr)
	   (str :cstring)
	   (n   :int))
     "winsnstr")

; C-prototype: int mvinsstr(int y, int x, const char *str);
(def :int ((y   :int)
	   (x   :int)
	   (str :cstring))
     "mvinsstr")

; C-prototype: int mvinsnstr(int y, int x, const char *str, int n);
(def :int ((y   :int)
	   (x   :int)
	   (str :cstring)
	   (n   :int))
     "mvinsnstr")

; C-prototype: int mvwinsstr(WINDOW *win, int y, int x, const char *str);
(def :int ((win window-ptr)
	   (y   :int)
	   (x   :int)
	   (str :cstring))
     "mvwinsstr")

; C-prototype: int mvwinsnstr(WINDOW *win, int y, int x, const char *str, int n);
(def :int ((win window-ptr)
	   (y   :int)
	   (x   :int)
	   (str :cstring)
	   (n   :int))
     "mvwinsnstr")


