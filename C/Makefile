CFLAGS	:= -Wall -Werror -Wextra
CC		:= 	gcc

Colleen:	Colleen.o
	${CC} ${CFLAGS} $^ -o $@

.PHONY: testColleen
testColleen:	Colleen
	./$^ > $^.out
	@echo =====================================================================
	@cat $^.c
	@echo
	@echo =====================================================================
	diff $^.c $^.out

Grace:		Grace.o
	${CC} ${CFLAGS} $^ -o $@

.PHONY: testGrace
testGrace:	Grace
	./$^
	@echo =====================================================================
	@cat Grace.c
	@echo
	@echo =====================================================================
	diff Grace.c Grace_kid.c
