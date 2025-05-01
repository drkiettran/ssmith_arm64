APPS = HelloWorld
OBJS = HelloWorld.o

all: ${APPS}
clean: 
	rm ${OBJS} 
	rm ${APPS}

%.o : %.s
	as -o $@ $<

HelloWorld: HelloWorld.o
	ld -o $@ $<
