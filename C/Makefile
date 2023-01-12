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
	@echo [Sully.c]
	@echo =====================================================================
	@cat Sully.c
	@echo
	@echo =====================================================================
	@echo [execute Sully]
	./$^
	@echo [listing Sully files]
	ls -ltr Sully*
	@echo [Sully.c and Sully_5.c are identical?]
	diff Sully.c Sully_5.c
	@echo "-> ok."
	@echo [Sully.c and Sully_{4,3,2,1,0}.c are identical without only one line?]
	!(diff Sully_5.c Sully_4.c || diff Sully_4.c Sully_3.c || diff Sully_3.c Sully_2.c || diff Sully_2.c Sully_1.c || diff Sully_1.c Sully_0.c)
	@echo "-> ok."

.PHONY: wikipedia
wikipedia:
	${CC} ${CFLAGS} $@.c -o $@
	./$@
	diff $@.c $@_kid.c

.PHONY: clean
clean:
	rm -rf Sully Sully_*