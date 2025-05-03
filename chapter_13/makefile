
ifdef DEBUG
DEBUGFLGS = -g
else
DEBUGFLGS =
endif

APPS=distance matrixmultneon
all: $(APPS)
clean:
	rm -f $(APPS)

%.o : %.s
	as $(DEBUGFLGS) $(LSTFLGS) $< -o $@

distance: distance.s main.s
	gcc -g -o distance distance.s main.s

matrixmultneon: matrixmultneon.s
	gcc -g -o matrixmultneon matrixmultneon.s

