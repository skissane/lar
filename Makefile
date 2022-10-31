SOURCES = lar.c
OBJECTS = $(SOURCES:.c=.o)
PROGRAM = lar

$(PROGRAM): $(OBJECTS)
	gcc -o $(PROGRAM) $(OBJECTS)

$(OBJECTS): $(SOURCES)

.PHONY: clean
clean:
	rm -f $(OBJECTS)
