ASM			:=	nasm
ASFLAGS		:=	-f macho64 -g
CC			:=	gcc
CFLAGS		:=	-Wall -Wextra -Werror -g # -fsanitize=address
NAMES		:=	Colleen Grace Sully
TEST_NAMES	:=	$(addprefix test,$(NAMES))
OBJS		:=	$(addsuffix .o,$(NAMES))

.PHONY: all
all:	$(NAMES)

.PHONY: tall
tall:	$(TEST_NAMES)

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

Sully:		Sully.s
	$(ASM) $(ASFLAGS) $< -o $@.o
	$(CC) -g $@.o -o $@

.PHONY: testSully
testSully:	Sully
	@echo [$^.s]
	@echo =====================================================================
	@cat $^.s
	@echo
	@echo =====================================================================
	@echo [execute $^]
	./$^
	@echo [listing $^ files]
	ls -ltr $^*
	@echo [$^.s and $^_5.s are identical?]
	diff $^.s $^_5.s
	@echo "-> ok."
	@echo [$^.s and $^_{4,3,2,1,0}.s are identical except only the line?]
	!(diff $^_5.s $^_4.s || diff $^_4.s $^_3.s || diff $^_3.s $^_2.s || diff $^_2.s $^_1.s || diff $^_1.s $^_0.s)
	@echo "-> ok."


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

.PHONY: clean
clean:
	rm -rf $(OBJS)
	rm -rf Grace_kid.s
	rm -rf Sully_*

.PHONY: fclean
fclean: clean
	rm -rf $(NAMES)
