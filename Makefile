CC=gcc
CFLAGS=-Wall -g

calcula: calcual.c calc.o
	$(CC) $(FLAGS) -c calc.c calc.o -o calcula

calcula.o: calc.c calc.h
	$(CC) $(FLAGS) -c calc.c -o calc.o

.PHONY: clean
clean:
	rm -rf *.o

.PHONY: dist
dist: clean calcula
	rm -rf ../dist;
	mkdir -p ../dist/calc
	cp calcula ../dist/calc

.PHONY: targz
targz: clean
	mkdir -p source
	cp *.c *.h Makefile source
#	tar -cvf calcula.tar.gz source
#	gzip calcula.tar
	tar -cvzf calcula.tar.gz source
	rm -rf calcula.tar
	rm -rf source

.PHONY: install
install: dist
	sudo cp -r ..dist/*/
