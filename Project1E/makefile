main: main.o
	gcc main.o -o main
main.o: main.c

test: Encrypt Decrypt 
Encrypt: 
	./main 1 spinning test.txt out.txt
Decrypt:
	./main 2 spinning out.txt test.txt