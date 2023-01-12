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
testSully:	Sully
	@echo =====================================================================
	@cat Sully.c
	@echo
	@echo =====================================================================
	./$^
	ls -l Sully*
	!(diff Sully.c Sully_4.c || diff Sully_4.c Sully_3.c || diff Sully_3.c Sully_2.c || diff Sully_2.c Sully_1.c || diff Sully_1.c Sully_0.c)

.PHONY: wikipedia
wikipedia:
	${CC} ${CFLAGS} $@.c -o $@
	./$@
	diff $@.c $@_kid.c

.PHONY: clean
clean:
	rm -rf Sully Sully_*