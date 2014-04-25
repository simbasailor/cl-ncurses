NAME=cl-ncurses
SOURCES=ncurses.asd *.lisp glue.c README LICENSE Makefile

all: glue.o

dist:
	mkdir $(NAME)
	cp $(SOURCES) $(NAME)/
	tar -zcvf $(NAME).tar.gz $(NAME)
	rm -rf $(NAME)
