all: test32 test64
	./test32
	./test64
test32: test32.o my_atomic32.o
	gcc -m32 my_atomic32.o test32.o -o test32
test64: test64.o my_atomic64.o
	gcc my_atomic64.o test64.o -o test64

test64.o: test.c
	gcc test.c -c -o test64.o
test32.o: test.c
	gcc test.c -m32 -c -o test32.o
my_atomic64.o: my_atomic.S
	gcc my_atomic.S -c -o my_atomic64.o
my_atomic32.o: my_atomic.S
	gcc my_atomic.S -m32 -c -o my_atomic32.o

clean:
	rm -rf *.o test32 test64
