.PHONY: all clear compileall

FLAGS=-O3 -msse2
SMART=smart show select

all: $(SMART) compileall data


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

# get SMART corpora
DATA=smart11.06_data.zip
URL=http://www.dmi.unict.it/~faro/smart/$(DATA)
$(DATA):
	wget $(URL)

data/englishTexts/index.txt: $(DATA)
	unzip -n $^

data: data/englishTexts/index.txt

clean:
	rm -f $(SMART)
	$(MAKE) -C source clean

