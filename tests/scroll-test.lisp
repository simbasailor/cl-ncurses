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

(defvar *primes* nil)
(setf *primes* '(2))

(defun is-prime-p (n)
  (let ((search-max (ceiling (sqrt n)))
	(result t))
    (dolist (p (remove-if #'(lambda (x) (> x search-max)) *primes*))
      (if (equal (rem n p) 0)
	(setf result nil)))
    result))

(defun write-number (win row col n final-newline)
  (let ((str (write-to-string n)))
    (mvwaddstr win row col (if final-newline
			       (concatenate 'string str (string #\Newline))
			       str)))
  t)

(defvar *max* 100)

;; This function creates two scrolling regions, which scroll 
;; simultaneously...
(defun scroll-test ()
    (let ((scr (initscr))
	  (title "Searching primes..."))

      (init-color-ncurses)
      (curs-set 0)
      (init-pair 1 COLOR_WHITE COLOR_BLUE)
      (init-pair 2 COLOR_WHITE COLOR_GREEN)
      (init-pair 3 COLOR_WHITE COLOR_RED)
      (init-pair 4 COLOR_WHITE COLOR_YELLOW)
      
      (erase)
      
      (bkgd (COLOR-PAIR 1))
      (box scr 0 0)
      (attron WA_BOLD)
      (mvaddstr 2 (ceiling (/ (- *COLS* (length title)) 2)) title)
      
      (refresh)
      
      (let ((win1 (newwin 18 13 4 19))
	    (win2 (newwin 18 17 4 50)))

	; Setting win1
	(scrollok win1 TRUE)
        (wsetscrreg win1 3 16)
	(wbkgd win1 (COLOR-PAIR 2))
	(wattron win1 WA_BOLD)
	(mvwaddstr win1 1 2 "Checking: ")
	(wrefresh win1)
	
	; Setting win2
	(scrollok win2 TRUE)
        (wsetscrreg win2 3 16)
	(wbkgd win2 (COLOR-PAIR 3))
	(wattron win2 WA_BOLD)
	(mvwaddstr win2 1 2 "Found primes:")
	(wrefresh win2)
	
	(do ((n 3 (incf n)))
	  ((eql n (+ *max* 1)))
	  (if (>= (+ n 2) 16)
	    (progn (write-number win1 16 1 n t)
		   (wrefresh win1)
		   (if (is-prime-p n)
		       (progn (nconc *primes* (list n))
			      (write-number win2 16 1 n t)
			      (wrefresh win2))))
	    (progn (write-number win1 (+ n 2) 1 n nil)
		   (wrefresh win1)
		   (if (is-prime-p n)
		       (progn (nconc *primes* (list n))
		  	      (write-number win2 (+ n 2) 1 n nil)
			      (wrefresh win2))))))

	(mvwaddstr scr 23 2 "Type any key to exit.")
	(wrefresh scr)
	(wgetch scr)

	; Deleting both windows...
	(delwin win1)
	(delwin win2))

      (endwin)))

