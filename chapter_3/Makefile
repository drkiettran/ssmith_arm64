OBJS = HelloWorld.o
APPS = HelloWorld

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

HelloWorld: HelloWorld.o
	ld -o $@ $<
