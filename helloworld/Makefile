all: helloworld64 helloworldc helloworld32

helloworld64: helloworld64.S
	gcc helloworld64.S -o helloworld64

helloworld32: helloworld32.S
	gcc -m32 helloworld32.S -o helloworld32

helloworldc: helloworld.c
	gcc helloworld.c -o helloworldc

clean:
	rm -rf *.o helloworld{32,64,c}