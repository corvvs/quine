ASM		:=	nasm
ASFLAGS	:=	-f macho64 -g
CC		:=	gcc
CFLAGS	:=	-Wall -Wextra -Werror -g # -fsanitize=address

SRCDIR	:=	.
OBJDIR	:=	.

Colleen:	Colleen.s
	$(ASM) $(ASFLAGS) $< -o $@.o
	$(CC) $@.o -o $@

.PHONY:			testColleen
testColleen:	Colleen
	./$^ > $^.out
	@echo =====================================================================
	@cat $^.s
	@echo
	@echo =====================================================================
	diff $^.s $^.out

Grace:		Grace.s
	$(ASM) $(ASFLAGS) $< -o $@.o
	$(CC) -g $@.o -o $@

.PHONY: testGrace
testGrace:	Grace
	./$^
	@echo =====================================================================
	@cat $^.s
	@echo
	@echo =====================================================================
	diff $^.s $^_kid.s


QUINE	:=	quine

.PHONY: $(QUINE)
$(QUINE):
	$(ASM) $(ASFLAGS) quine.s
	$(CC) $(CFLAGS) quine.o -o quine
	./$(QUINE) > child.s && cat child.s

.PHONY: q
q:
	gcc -masm=intel q.s -o q
	./q > c.s && cat c.s
