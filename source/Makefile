.PHONY: clean

ALGOS=$(wildcard algos/*.c)
BIN=$(addprefix bin/,$(notdir $(ALGOS:.c=))) # algos/foo.c => bin/foo
DEPS=algos/include/*.h

FLAGS=-O3 -msse4 -lm

all: $(BIN)

bin/%: algos/%.c $(DEPS)
	$(CC) $(FLAGS) $< -o $@

clean:
	rm -f $(BIN)
