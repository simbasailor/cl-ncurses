(in-package :cl-ncurses)

; values for the _flags member
(def-constant _SUBWIN         0x01)	; is this a sub-window? 
(def-constant _ENDLINE        0x02)	; is the window flush right? 
(def-constant _FULLWIN        0x04)	; is the window full-screen? 
(def-constant _SCROLLWIN      0x08)	; bottom edge is at screen bottom? 
(def-constant _ISPAD	      0x10)	; is this window a pad? 
(def-constant _HASMOVED       0x20)	; has cursor moved since last refresh? 
(def-constant _WRAPPED        0x40)	; cursor was just wrappped 

; this value is used in the firstchar and lastchar fields to mark
; unchanged lines
(def-constant _NOCHANGE -1)

; this value is used in the oldindex field to mark lines created by insertions
; and scrolls.
(def-constant _NEWINDEX	-1)

typedef struct screen  SCREEN;
typedef struct _win_st WINDOW;

typedef	chtype	attr_t;		/* ...must be at least as wide as chtype */

#ifdef _XOPEN_SOURCE_EXTENDED

#if 0
#ifdef mblen			/* libutf8.h defines it w/o undefining first */
#undef mblen
#endif
#include <libutf8.h>
#endif

#if 0
#include <wchar.h>		/* ...to get mbstate_t, etc. */
#endif

#if 0
typedef unsigned short wchar_t;
#endif

#if 0
typedef unsigned int wint_t;
#endif

#define CCHARW_MAX	5
typedef struct
{
    attr_t	attr;
    wchar_t	chars[CCHARW_MAX];
}
cchar_t;

#endif /* _XOPEN_SOURCE_EXTENDED */

struct ldat;

struct _win_st
{
	NCURSES_SIZE_T _cury, _curx; /* current cursor position */

	/* window location and size */
	NCURSES_SIZE_T _maxy, _maxx; /* maximums of x and y, NOT window size */
	NCURSES_SIZE_T _begy, _begx; /* screen coords of upper-left-hand corner */

	short   _flags;		/* window state flags */

	/* attribute tracking */
	attr_t  _attrs;		/* current attribute for non-space character */
	chtype  _bkgd;		/* current background char/attribute pair */

	/* option values set by user */
	bool	_notimeout;	/* no time out on function-key entry? */
	bool	_clear;		/* consider all data in the window invalid? */
	bool	_leaveok;	/* OK to not reset cursor on exit? */
	bool	_scroll;	/* OK to scroll this window? */
	bool	_idlok;		/* OK to use insert/delete line? */
	bool	_idcok;		/* OK to use insert/delete char? */
	bool	_immed;		/* window in immed mode? (not yet used) */
	bool	_sync;		/* window in sync mode? */
	bool	_use_keypad;	/* process function keys into KEY_ symbols? */
	int	_delay;		/* 0 = nodelay, <0 = blocking, >0 = delay */

	struct ldat *_line;	/* the actual line data */

	/* global screen state */
	NCURSES_SIZE_T _regtop;	/* top line of scrolling region */
	NCURSES_SIZE_T _regbottom; /* bottom line of scrolling region */

	/* these are used only if this is a sub-window */
	int	_parx;		/* x coordinate of this window in parent */
	int	_pary;		/* y coordinate of this window in parent */
	WINDOW	*_parent;	/* pointer to parent if a sub-window */

	/* these are used only if this is a pad */
	struct pdat
	{
	    NCURSES_SIZE_T _pad_y,      _pad_x;
	    NCURSES_SIZE_T _pad_top,    _pad_left;
	    NCURSES_SIZE_T _pad_bottom, _pad_right;
	} _pad;

	NCURSES_SIZE_T _yoffset; /* real begy is _begy + _yoffset */

#ifdef _XOPEN_SOURCE_EXTENDED
	cchar_t  _bkgrnd;	/* current background char/attribute pair */
#endif
};
