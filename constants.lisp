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

;;;;;;;;;;;;;;;;;;;;;;;;;
;; NCURSES'S CONSTANTS ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-ncurses)

; Predefined colors
(def-constant COLOR_BLACK   0 :export t)
(def-constant COLOR_RED     1 :export t)
(def-constant COLOR_GREEN   2 :export t)
(def-constant COLOR_YELLOW  3 :export t)
(def-constant COLOR_BLUE    4 :export t)
(def-constant COLOR_MAGENTA 5 :export t)
(def-constant COLOR_CYAN    6 :export t)
(def-constant COLOR_WHITE   7 :export t)

(def-constant TRUE  1 :export t)
(def-constant FALSE 0 :export t)
(def-constant ERR -1 :export t)
(def-constant OK 0 :export t)
(def-constant KEY_RESIZE 0632 :export t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; XSI attributes.  In the ncurses implementation, they are identical to the   ;;
; A_ attributes.                                                              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def-constant WA_ATTRIBUTES #xffffff00 :export t)
(def-constant WA_ATTRIBUTES #xffffff00 :export t)
(def-constant WA_NORMAL #x00000000 :export t)
(def-constant WA_STANDOUT #x00010000 :export t)
(def-constant WA_UNDERLINE #x00020000 :export t)
(def-constant WA_REVERSE #x00040000 :export t)
(def-constant WA_BLINK #x00080000 :export t)
(def-constant WA_DIM #x00100000 :export t)
(def-constant WA_BOLD #x00200000 :export t)
(def-constant WA_ALTCHARSET #x00400000 :export t)
(def-constant WA_INVIS #x00800000 :export t)
(def-constant WA_PROTECT #x01000000 :export t)
(def-constant WA_HORIZONTAL #x02000000 :export t) ;XSI Curses attr -- not yet used 
(def-constant WA_LEFT #x04000000       :export t) ;XSI Curses attr -- not yet used 
(def-constant WA_LOW #x08000000        :export t) ;XSI Curses attr -- not yet used 
(def-constant WA_RIGHT #x10000000      :export t) ;XSI Curses attr -- not yet used 
(def-constant WA_TOP #x20000000        :export t) ;XSI Curses attr -- not yet used 
(def-constant WA_VERTICAL #x40000000   :export t) ;XSI Curses attr -- not yet used 

(def-constant A_ATTRIBUTES #xffffff00 :export t)
(def-constant A_ATTRIBUTES #xffffff00 :export t)
(def-constant A_NORMAL #x00000000 :export t)
(def-constant A_STANDOUT #x00010000 :export t)
(def-constant A_UNDERLINE #x00020000 :export t)
(def-constant A_REVERSE #x00040000 :export t)
(def-constant A_BLINK #x00080000 :export t)
(def-constant A_DIM #x00100000 :export t)
(def-constant A_BOLD #x00200000 :export t)
(def-constant A_ALTCHARSET #x00400000 :export t)
(def-constant A_INVIS #x00800000 :export t)
(def-constant A_PROTECT #x01000000 :export t)
(def-constant A_HORIZONTAL #x02000000 :export t) ;XSI Curses attr -- not yet used 
(def-constant A_LEFT #x04000000       :export t) ;XSI Curses attr -- not yet used 
(def-constant A_LOW #x08000000        :export t) ;XSI Curses attr -- not yet used 
(def-constant A_RIGHT #x10000000      :export t) ;XSI Curses attr -- not yet used 
(def-constant A_TOP #x20000000        :export t) ;XSI Curses attr -- not yet used 
(def-constant A_VERTICAL #x40000000   :export t) ;XSI Curses attr -- not yet used 

; VT100 symbols
(def-constant ACS_ULCORNER #\l)               ; upper left corner
(def-constant ACS_LLCORNER #\m)		; lower left corner 
(def-constant ACS_URCORNER #\k)		; upper right corner 
(def-constant ACS_LRCORNER #\j)		; lower right corner 
(def-constant ACS_LTEE #\t)			; tee pointing right 
(def-constant ACS_RTEE #\u)			; tee pointing left 
(def-constant ACS_BTEE #\v)			; tee pointing up 
(def-constant ACS_TTEE #\w)			; tee pointing down 
(def-constant ACS_HLINE #\q)			; horizontal line 
(def-constant ACS_VLINE #\x)			; vertical line 
(def-constant ACS_PLUS #\n)			; large plus or crossover 
(def-constant ACS_S1 #\o)			; scan line 1 
(def-constant ACS_S9 #\s)			; scan line 9 
(def-constant ACS_DIAMOND #\`)			; diamond 
(def-constant ACS_CKBOARD #\a)			; checker board (stipple) 
(def-constant ACS_DEGREE #\f)			; degree symbol 
(def-constant ACS_PLMINUS #\g)			; plus/minus 
(def-constant ACS_BULLET #\~)			; bullet 



