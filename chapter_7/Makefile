OBJS = main.o upper.o
APPS = upper

all: ${APPS}

clean: 
	rm -f ${APPS}
	rm -f  ${OBJS}

ifdef DEBUG
DEBUGFLGS = -g
else
DEBUGFLGS =
endif
LSTFLGS =

%.o : %.S
	gcc $(DEBUGFLGS) $(LSTFLGS) -c $< -o $@

%.o : %.s
	as $(DEBUGFLGS) $(LSTFLGS) -o $@ $<

upper: upper.o main.o
	ld -o $@ upper.o main.o
