.PHONY: all logo

FLAGS=-O3 -msse2
SMART=smart show select test

all: $(SMART)


smart: source/smart.c
	$(CC) $(FLAGS) -lm $^ -o $@

show: source/show.c
	$(CC) $(FLAGS) $^ -o $@

select: source/selectAlgo.c
	$(CC) $(FLAGS) $^ -o $@

test: source/test.c
	$(CC) $(FLAGS) $^ -o $@

compilesm: source/compilesm.c
	$(CC) $(FLAGS) $^ -o $@

#./compilesm
