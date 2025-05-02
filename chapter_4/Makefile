OBJS = printdword.o codesnippets.o
APPS = printdword codesnippets

all: ${APPS}

clean: 
	rm -f ${APPS}
	rm -f  ${OBJS}

ifdef DEBUG
DEBUGFLGS = -g
else
DEBUGFLGS =
endif

%.o : %.s
	as $(DEBUGFLGS) -o $@ $<

printdword: printdword.o
	ld -o $@ $<	

codesnippets: codesnippets.o
	ld -o $@ $<		