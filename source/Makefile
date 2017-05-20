.PHONY: clean

ALGOS=$(wildcard algos/*.c)
BIN=$(addprefix bin/,$(notdir $(ALGOS:.c=))) # algos/foo.c => bin/foo

FLAGS=-O3 -msse4 -lm

all: $(BIN)

bin/%: algos/%.c
	$(CC) $(FLAGS) $^ -o $@

clear:
	rm -f $(BIN)
