
O = build-${shell $(CC) -dumpmachine}

all: $(O) $(O)/bin/xbootgen

$(O)/bin/xbootgen: xbootgen.c
	$(CC) -o $@ $^

$(O) :
	mkdir -p $(O)/bin

clean:
	rm -rf $(O)
