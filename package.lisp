;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-USER; Base: 10 -*-
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

(in-package :cl-user)

(defpackage #:cl-ncurses
  (:use #:cl #:uffi)
  (:export :SLK-LABEL :WINSTR :WINNSTR
           :HAS-COLORS :SETSCRREG
           :NONL :FALSE :SAVETTY
           :WA_ALTCHARSET :MVWINCHSTR
           :MVWINSSTR :WATTROFF
           :MVDELCH :*TABSIZE*
           :COLOR_CYAN :MVHLINE
           :A_INVIS :CURSES-VERSION
           :NODELAY :WREDRAWLN
           :NOECHO :GET-PARYX
           :HAS-IL :WA_DIM :PREFRESH
           :WINCH :SLK-ATTROFF
           :MVINCHSTR :NEWPAD
           :WVLINE :BAUDRATE :A_LEFT
           :GETMAXYX :*CURSCR* :OK
           :WA_BLINK :FLASH :GETBKGD
           :*ECSDELAY* :TERMNAME
           :START-COLOR :IS-LINETOUCHED
           :MVWINSTR :COLOR_GREEN
           :MVWGETCH :DELAY-OUTPUT
           :SCRL :DELCH :WSYNCDOWN
           :DEF-PROG-MODE :COLOR_MAGENTA
           :SLK-RESTORE :FLUSHINP
           :A_REVERSE :ADDSTR
           :MVINSNSTR :TOUCHLINE
           :WATTRSET :MVGETSTR
           :DELSCREEN :HAS-IC
           :MVINSCH :A_TOP :A_DIM
           :SLK-NOUTREFRESH :RESIZETERM
           :INITSCR :WINSERTLN
           :ECHOCHAR :NOTIMEOUT
           :WA_PROTECT :RESET-SHELL-MODE
           :WCURSYNCUP :NAPMS
           :SCR-RESTORE :MVADDNSTR
           :SET-TERM :GETNSTR
           :UNGETCH :RESETTY :CBREAK
           :OVERWRITE :SUBPAD
           :WPRINTW :SCROLL :GETBEGX
           :ISENDWIN :PRINTW
           :WSTANDOUT :WSETSCRREG
           :WGETCH :ATTRSET :A_LOW
           :KILLCHAR :MVINCHNSTR
           :NOCBREAK :INSNSTR
           :MVWINSNSTR :DERWIN
           :MVADDSTR :GETPARYX
           :WGETSTR :ENDWIN :A_RIGHT
           :MVWINCH :WCLEAR
           :WA_INVIS :MVINSSTR
           :SCR-DUMP :GETMAXY
           :TYPEAHEAD :MVINCH
           :WCLRTOBOT :VLINE
           :USE-DEFAULT-COLORS :*LINES*
           :WA_ATTRIBUTES :USE-EXTENDED-NAMES
           :WECHOCHAR :LEAVEOK
           :WADDCH :DOUPDATE
           :MVWINCHNSTR :WA_RIGHT
           :ECHO :TERMATTRS
           :A_NORMAL :NORAW
           :WBKGDSET :USE-ENV
           :GETPARY :WA_HORIZONTAL
           :SLK-ATTRSET :WADDNSTR
           :A_UNDERLINE :HLINE
           :IS-WINTOUCHED :SCR-INIT
           :MVWHLINE :BKGD :LONGNAME
           :GETBEGYX :CLRTOEOL
           :TGETFLAG :WA_LEFT :TRUE
           :KEYBOUND :MVPRINTW
           :WMOVE :SLK-TOUCH
           :TGETNUM :GET-YX
           :WTOUCHLN :WINCHNSTR
           :MVWADDNSTR :COLOR-PAIR
           :HALFDELAY :SLK-COLOR
           :WGETNSTR :SLK-INIT
           :WHLINE :A_ALTCHARSET
           :GET-MAXYX :WERASE
           :A_BLINK :WCOLOR-SET
           :MVINNSTR :INSTR :MVWIN
           :WINSSTR :WINCHSTR
           :MVINSTR :INTRFLUSH
           :WADDSTR :COLOR_BLACK
           :*STDSCR* :IS-TERM-RESIZED
           :MVGETCH :MVVLINE
           :COLOR_YELLOW :META
           :MVWADDSTR :UNTOUCHWIN
           :WBORDER :SUBWIN
           :INSDELLN :ASSUME-DEFAULT-COLORS
           :WATTRON :WREFRESH
           :*COLOR-PAIRS* :QIFLUSH
           :ADDCH :KEY_RESIZE :WSCRL
           :BEEP :OVERLAY :COLOR-SET
           :GETPARX :GETCH
           :PAIR-CONTENT :SCR-SET
           :GETBEGY :KEYOK :INSSTR
           :BORDER :GETYX
           :WA_VERTICAL :KEYPAD
           :BKGDSET :ATTROFF
           :IMMEDOK :COLOR-CONTENT
           :NL :SLK-REFRESH
           :CURS-SET :MVWGETNSTR
           :TOUCHWIN :CLEAROK
           :NEWWIN :MVWDELCH
           :SLK-SET :BOX
           :DEF-SHELL-MODE :COLOR_RED
           :ERR :IDLOK :SLK-CLEAR
           :WDELETELN :CAN-CHANGE-COLOR
           :A_BOLD :MVWINSCH
           :MVWINNSTR :*COLS*
           :WA_TOP :WA_LOW :HAS-KEY
           :INSCH :CLEAR
           :RESIZE-TERM :REDRAWWIN
           :STANDEND :CLRTOBOT
           :WRESIZE :DELETELN
           :A_STANDOUT :WINSDELLN
           :PECHOCHAR :MVGETNSTR
           :SCROLLOK :WA_UNDERLINE
           :A_VERTICAL :WA_REVERSE
           :WINSNSTR :WA_NORMAL
           :RESET-PROG-MODE :A_PROTECT
           :REFRESH :GETSTR :MCPRINT
           :WSTANDEND :KEYNAME
           :PNOUTREFRESH :GET-BEGYX
           :MVWGETSTR :STANDOUT
           :WTIMEOUT :*COLORS* :MOVE
           :ERASECHAR :DELWIN
           :WNOUTREFRESH :INCHNSTR
           :MVDERWIN :COLOR_WHITE
           :ERASE :DUPWIN :INIT-PAIR
           :NOQIFLUSH :INIT-COLOR
           :RAW :ATTRON :FILTER
           :MVADDCH :INCH :WINSCH
           :MVWPRINTW :GETCURY
           :WSYNCUP :INSERTLN
           :NEWTERM :WDELCH
           :COLOR_BLUE :A_ATTRIBUTES
           :*NEWSCR* :INCHSTR
           :A_HORIZONTAL :SLK-ATTRON
           :IDCOK :GETMAXX
           :WA_STANDOUT :WCLRTOEOL
           :SYNCOK :GETCURX :ADDNSTR
           :INNSTR :WA_BOLD
           :MVWVLINE :MVWADDCH
           :WBKGD :TIMEOUT :UNCTRL)
  )

(in-package :cl-ncurses)

;; On some versions of Linux, /usr/lib is a linker script to /lib
;; (which SBCL barfs on), so we list /lib before /usr/lib.
(defvar *ncurses-search-paths* 
  #-win32'("/usr/local/lib64/" "/usr/local/lib/" "/lib64/" "/lib/" "/usr/lib64/" "/usr/lib/")
  #+win32'("/users/jacob/src/pdc31dll/"))
        

(defparameter *ncurses-path*
  #-win32
  (find-foreign-library
   "libncurses"
   *ncurses-search-paths*
   :drive-letters '("C" "D" "E")
   :types '("so" "dylib" "a" "dll"))
  #+win32
  (find-foreign-library
   "pdcurses"
   *ncurses-search-paths*
   :drive-letters '("C" "D" "E")
   :types '("dll"))
  )

(cond (*ncurses-path* (format t "~&;;; Loading ~s" *ncurses-path*)
                      (load-foreign-library *ncurses-path*
                                            :module "cl-ncurses"))
      (t (warn "Unable to load ncurses.")))

;;; Types
(def-foreign-type bool       :int)
(def-foreign-type char-ptr   :pointer-void)
(def-foreign-type chtype     :int)
(def-foreign-type file-ptr   :pointer-void)
(def-foreign-type screen-ptr :pointer-void)
(def-foreign-type window-ptr :pointer-void)

;; Null pointer to fill unused arguments required by some functions
;; (e.g. wcolor-set and color-set).
(defconstant *NULLPTR* +null-cstring-pointer+)

(defmacro def (ret args &rest names)
  "A convenience macro for UFFI definitions."
  `(progn
     ,@(mapcar (lambda (name)
                 `(export (def-function ,name ,args
                            :module "cl-ncurses"
                            :returning ,ret)))
               names)))

;; from onlisp.lisp
(defun group (source n)
  (if (zerop n) (error "zero length"))
  (labels ((rec (source acc)
             (let ((rest (nthcdr n source)))
               (if (consp rest)
                   (rec rest (cons (subseq source 0 n) acc))
                   (nreverse (cons source acc))))))
    (if source (rec source nil) nil)))
