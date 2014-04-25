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

(in-package :cl-ncurses)

(defun init-color-ncurses ()
  (start-color)
  (init-pair COLOR_BLACK   COLOR_BLACK   COLOR_BLACK)
  (init-pair COLOR_GREEN   COLOR_GREEN   COLOR_BLACK)
  (init-pair COLOR_RED     COLOR_RED     COLOR_BLACK)
  (init-pair COLOR_CYAN    COLOR_CYAN    COLOR_BLACK)
  (init-pair COLOR_WHITE   COLOR_WHITE   COLOR_BLACK)
  (init-pair COLOR_MAGENTA COLOR_MAGENTA COLOR_BLACK)
  (init-pair COLOR_BLUE    COLOR_BLUE    COLOR_BLACK)
  (init-pair COLOR_YELLOW  COLOR_YELLOW  COLOR_BLACK))

(defun advocacy ()
    (let ((scr (initscr)))

      (init-color-ncurses)
    
      (curs-set 0)

      (init-pair 1 COLOR_WHITE COLOR_BLUE)
      (init-pair 2 COLOR_WHITE COLOR_GREEN)
      (init-pair 3 COLOR_WHITE COLOR_RED)
      (init-pair 4 COLOR_WHITE COLOR_YELLOW)
      
      (erase)
      (bkgd (COLOR-PAIR 1))

      (box scr 0 0)
      (refresh)
   
      (let ((win1 (newwin 19 24 3 2))
	    (win2 (newwin 19 24 3 28))
	    (win3 (newwin 19 24 3 54)))

	(box win1 0 0)
	(wbkgd win1 (COLOR-PAIR 2))
	(wattron win1 WA_BOLD)
	(mvwaddstr win1 5 6 "CL-NCURSES:")
	(wrefresh win1)
	
	(box win2 0 0)
	(wbkgd win2 (COLOR-PAIR 3))
	(wattron win2 WA_BOLD)
	(mvwaddstr win2 7 2 "a NCURSES interface")
	(wrefresh win2)
	
	(box win3 0 0)
	(wbkgd win3 (COLOR-PAIR 4))
	(wattron win3 WA_BOLD)
	(mvwaddstr win3 9 4 "for COMMON LISP.")
	(wrefresh win3)

	(sleep 5)

	(delwin win1)
	(delwin win2)
	(delwin win3))

      (endwin)))
