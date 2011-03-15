CFLAGS = -I.
CC = gcc

all: test32 test64
	./test32
	./test64
test32: test32.o atomic32.o
	gcc -m32 atomic32.o test32.o -o test32
test64: test64.o atomic64.o
	$(CC) $(CFLAGS) atomic64.o test64.o -o test64

test64.o: test.c atomic.h
	$(CC) $(CFLAGS) -c test.c -o test64.o
test32.o: test.c atomic.h
	$(CC) $(CFLAGS) -m32 -c test.c -o test32.o
atomic64.o: atomic.S
	$(CC) $(CFLAGS) -c atomic.S -o atomic64.o
atomic32.o: atomic.S
	$(CC) $(CFLAGS) -m32 -c atomic.S -o atomic32.o

clean:
	rm -rf *.o test32 test64
