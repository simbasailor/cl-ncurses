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

(in-package :cl-ncurses)

; Demonstrate the keyok() function.

(defun keyok-test ()
  (let ((lastch ERR)
	(ch     0)
	(win    window-ptr))

    (initscr)
    (cbreak) ; take input chars one at a time, no wait for \n
    (noecho) ; don't echo input

    (printw "Typing any function key will disable it, but typing it twice in\n")
    (printw "a row will turn it back on (just for a demo).")
    (refresh);

    (let ((win (newwin (- LINES 2) COLS  2 0)))
      (scrollok win TRUE)
      (keypad win TRUE)
      (wmove win 0 0)

      (do ((ch (wgetch win) (wgetch win)))
	((not (eq ch ERR)))
	(let ((name (keyname ch)))
	  (wprintw win "Keycode %d, name $s\n" ch (if (not (eq name 0))
						      name
						      "<null>"))



	
      
    while ((ch = wgetch(win)) != ERR) {
	char *name = keyname(ch);
	wprintw(win, "Keycode %d, name %s\n",
		ch,
		name != 0 ? name : "<null>");
	wclrtoeol(win);
	wrefresh(win);
	if (ch >= KEY_MIN) {
	    keyok(ch, FALSE);
	    lastch = ch;
	} else if (lastch >= KEY_MIN) {
	    keyok(lastch, TRUE);
	}
    }
    endwin();
    return EXIT_SUCCESS;
}
#else
int
main(void)
{
    printf("This program requires the ncurses library\n");
    ExitProgram(EXIT_FAILURE);
}
#endif
