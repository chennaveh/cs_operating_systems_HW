#all: binsem.a ut.a ph 
FLAGS = -Wall  -L./ -m32


ph: ph.c binsem.a ut.a
	gcc ${FLAGS} ph.c -lbinsem -lut -o ph


binsem.a:
	gcc $(FLAGS)  -c binsem.c
	ar rcU libbinsem.a binsem.o
	ranlib libbinsem.a 


ut.a:
	gcc $(FLAGS)  -c ut.c
	ar rcU libut.a ut.o
	ranlib libut.a 

clean:
	rm -f *.o 
	rm -f a.out
	rm -f *~
	rm -f ph
	rm -f *a 