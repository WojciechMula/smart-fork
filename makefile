.PHONY: all clear compileall

FLAGS=-O3 -msse2
SMART=smart show select

all: $(SMART) compileall


smart: source/smart.c
	$(CC) $(FLAGS) -lm $^ -o $@

show: source/show.c
	$(CC) $(FLAGS) $^ -o $@

select: source/selectAlgo.c
	$(CC) $(FLAGS) $^ -o $@

test: source/test.c
	$(CC) $(FLAGS) $^ -o $@

compileall:
	$(MAKE) -C source

clear:
	rm -f $(SMART)
	$(MAKE) -C source clear

