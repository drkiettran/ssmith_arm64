

OBJS = main.o mainmacro.o upper.o codesnippets.o
APPS = uppermacro upper codesnippets

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

upper: upper.o main.o
	ld -o $@ upper.o main.o

uppermacro: mainmacro.o main.o
	ld -o $@ $<	

codesnippets: codesnippets.o
	ld -o $@ $<