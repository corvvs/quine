CFLAGS	:= -Wall -Werror -Wextra
CC		:= 	gcc

all:	Colleen Grace Sully

tall:	testColleen testGrace testSully

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
	@cat $^.c
	@echo
	@echo =====================================================================
	diff $^.c $^_kid.c

Sully:		Sully.o
	${CC} ${CFLAGS} $^ -o $@

.PHONY: testSully
testSully:	Sully
	@echo [$^.c]
	@echo =====================================================================
	@cat $^.c
	@echo
	@echo =====================================================================
	@echo [execute $^]
	./$^
	@echo [listing $^ files]
	ls -ltr $^*
	@echo [$^.c and $^_5.c are identical?]
	diff $^.c $^_5.c
	@echo "-> ok."
	@echo [$^.c and $^_{4,3,2,1,0}.c are identical except only the line?]
	!(diff $^_5.c $^_4.c || diff $^_4.c $^_3.c || diff $^_3.c $^_2.c || diff $^_2.c $^_1.c || diff $^_1.c $^_0.c)
	@echo "-> ok."

.PHONY: wikipedia
wikipedia:
	${CC} ${CFLAGS} $@.c -o $@
	./$@
	diff $@.c $@_kid.c

.PHONY: clean
clean:
	rm -rf Grace Grace_kid.c
	rm -rf Sully Sully_*