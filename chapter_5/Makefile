OBJS = upper.o codesnippets.o
APPS = upper codesnippets

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

upper: upper.o
	ld -o $@ $<	

codesnippets: codesnippets.o
	ld -o $@ $<		