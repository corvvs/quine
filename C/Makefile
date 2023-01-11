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

Sully:		Sully.o
	${CC} ${CFLAGS} $^ -o $@

.PHONY: testSully
testGSully:	Sully
	@echo =====================================================================
	@cat Sully.c
	@echo
	@echo =====================================================================
	./$^
	ls -l Sully*.*
	diff Sully.c Sully_0.c

.PHONY: wikipedia
wikipedia:
	${CC} ${CFLAGS} $@.c -o $@
	./$@
	diff $@.c $@_kid.c
