

ifdef DEBUG
DEBUGFLGS = -g
else
DEBUGFLGS =
endif
LSTFLGS =
APPS=codesnippets distance fpcomp
all: $(APPS)

clean:
	rm -f $(APPS)

%.o : %.s
	as -march="armv8.2-a+fp16" $(DEBUGFLGS) $(LSTFLGS) $< -o $@

codesnippets: codesnippets.o
	ld -o codesnippets codesnippets.o

distance: distance.s main.s
	gcc -g -o distance distance.s main.s

fpcomp: fpcomp.s maincomp.s
	gcc -g -o fpcomp fpcomp.s maincomp.s
