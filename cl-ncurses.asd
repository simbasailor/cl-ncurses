;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-USER; Base: 10 -*-
;;;; This file is part of cl-ncurses, an ncurses interface for Common Lisp,
;;;; Copyright (c) 2004 Nikodemus Siivola
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

(in-package :cl-user)

(defpackage :cl-ncurses-asd
  (:use :cl :asdf))

(in-package :cl-ncurses-asd)

(declaim (optimize (debug 3) (safety 3)))

(defsystem :cl-ncurses
	   :version "0.1.4"
	   :depends-on (:uffi)
           :serial t
	   :components ((:file "package")
			(:file "add_wch" :depends-on ("package"))
			(:file "add_wchstr" :depends-on ("package"))
			(:file "addch" :depends-on ("package"))
			(:file "addchstr" :depends-on ("package"))
			(:file "addstr" :depends-on ("package"))
			(:file "addwstr" :depends-on ("package"))
			(:file "attr" :depends-on ("package"))
			(:file "beep" :depends-on ("package"))
			(:file "bkgd" :depends-on ("package"))
			(:file "bkgrnd" :depends-on ("package"))
			(:file "border" :depends-on ("package"))
			(:file "border_set" :depends-on ("package"))
			(:file "clear" :depends-on ("package"))
			(:file "color" :depends-on ("package"))
			(:file "constants" :depends-on ("package"))
			(:file "default_colors" :depends-on ("package"))
			(:file "delch" :depends-on ("package"))
			(:file "deleteln" :depends-on ("package"))
			(:file "extensions" :depends-on ("package"))
			(:file "get_wch" :depends-on ("package"))
			(:file "get_wstr" :depends-on ("package"))
			(:file "getcchar" :depends-on ("package"))
			(:file "getch" :depends-on ("package"))
			(:file "getstr" :depends-on ("package"))
			(:file "getyx" :depends-on ("package"))
			(:file "in_wch" :depends-on ("package"))
			(:file "in_wchstr" :depends-on ("package"))
			(:file "inch" :depends-on ("package"))
			(:file "inchstr" :depends-on ("package"))
			(:file "initscr" :depends-on ("package"))
			(:file "inopts" :depends-on ("package"))
			(:file "ins_wch" :depends-on ("package"))
			(:file "ins_wstr" :depends-on ("package"))
			(:file "insch" :depends-on ("package"))
			(:file "insstr" :depends-on ("package"))
			(:file "instr" :depends-on ("package"))
			(:file "inwstr" :depends-on ("package"))
			(:file "kernel" :depends-on ("package"))
			(:file "keybound" :depends-on ("package"))
			(:file "keyok" :depends-on ("package"))
			(:file "key_defined" :depends-on ("package"))
			(:file "mouse" :depends-on ("package"))
			(:file "move" :depends-on ("package"))
			(:file "outopts" :depends-on ("package"))
			(:file "overlay" :depends-on ("package"))
			(:file "pad" :depends-on ("package"))
			(:file "print" :depends-on ("package"))
			(:file "printw" :depends-on ("package"))
			(:file "refresh" :depends-on ("package"))
			(:file "resizeterm" :depends-on ("package"))
			(:file "scanw" :depends-on ("package"))
			(:file "scr_dump" :depends-on ("package"))
			(:file "scroll" :depends-on ("package"))
			(:file "slk" :depends-on ("package"))
			(:file "termattrs" :depends-on ("package"))
			(:file "termcap" :depends-on ("package"))
			(:file "terminfo" :depends-on ("package"))
			(:file "touch" :depends-on ("package"))
			(:file "util" :depends-on ("package"))
			(:file "variables" :depends-on ("package"))
			(:file "window" :depends-on ("package"))
			(:file "wresize" :depends-on ("package"))
			))

