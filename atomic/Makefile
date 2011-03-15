CFLAGS = -I.
CC = gcc

all: atomic.o

tests: test32 test64
	./test32
	./test64
test32: test.c atomic.S
	$(CC) $(CFLAGS) -m32 atomic.S test.c -o test32
test64: test.c atomic.S
	$(CC) $(CFLAGS) atomic.S test.c -o test64

atomic.o: atomic.S
	$(CC) $(CFLAGS) -c atomic.S -o atomic.o

clean:
	rm -rf atomic.o test32 test64
