all: test32 test64
	./test32
	./test64
test32: test32.o atomic32.o
	gcc -m32 atomic32.o test32.o -o test32
test64: test64.o atomic64.o
	gcc atomic64.o test64.o -o test64

test64.o: test.c
	gcc test.c -c -o test64.o
test32.o: test.c
	gcc test.c -m32 -c -o test32.o
atomic64.o: atomic.S
	gcc atomic.S -c -o atomic64.o
atomic32.o: atomic.S
	gcc atomic.S -m32 -c -o atomic32.o

clean:
	rm -rf *.o test32 test64
