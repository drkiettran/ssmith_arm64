OBJS = movexamps.o addexamp1.o addexamp2.o codesnippets.o
APPS = movexamps addexamp1 addexamp2 codesnippets

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

movexamps: movexamps.o
	ld -o $@ $<

addexamp1: addexamp1.o
	ld -o $@ $<

addexamp2: addexamp2.o
	ld -o $@ $<

codesnippets: codesnippets.o
	ld -o $@ $<
