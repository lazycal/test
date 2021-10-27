CFLAGS := -Werror -Og -g -std=gnu99

all: tester tester_sol
tester:	tester.o ex1.o
	gcc $(CFLAGS) tester.o ex1.o -o	tester
tester_sol:	tester.o ex1_sol.o
	gcc $(CFLAGS) tester.o ex1_sol.o -o	tester_sol
ex1.o:	ex1.c
	gcc $(CFLAGS) -c ex1.c
clean:	
	rm -f	ex1.o tester tester_sol
