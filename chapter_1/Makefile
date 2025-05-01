APPS = HelloWorld
OBJS = HelloWorld.o

all: ${APPS}
clean: 
	rm -f ${OBJS} 
	rm -f ${APPS}

%.o : %.s
	as -o $@ $<

HelloWorld: HelloWorld.o
	ld -o $@ $<
