CFLAGS	:= -Wall -Werror -Wextra
CC		:= 	gcc

Colleen:	Colleen.o
	gcc ${CFLAGS} $^ -o Colleen

testColleen:	Colleen
	./$^ > $^.out
	cat $^.c
	diff $^.c $^.out
