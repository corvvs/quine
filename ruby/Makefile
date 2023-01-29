RUBY		:=	ruby
RUBYFLAGS	:=	
NAMES		:=	Colleen Grace Sully
TEST_NAMES	:=	$(addprefix test,$(NAMES))

.PHONY: all
all:	$(NAMES)

.PHONY: tall
tall:	$(TEST_NAMES)

Colleen:	Colleen.rb

.PHONY:			testColleen
testColleen:	Colleen
	$(RUBY) $^.rb > $^.out
	@echo =====================================================================
	@cat $^.rb
	@echo
	@echo =====================================================================
	diff $^.rb $^.out

Grace:		Grace.rb

.PHONY: testGrace
testGrace:	Grace
	$(RUBY) $^.rb
	@echo =====================================================================
	@cat $^.rb
	@echo
	@echo =====================================================================
	diff $^.rb $^_kid.rb

Sully:		Sully.rb

.PHONY: testSully
testSully:	Sully
	@echo [$^.rb]
	@echo =====================================================================
	@cat $^.rb
	@echo
	@echo =====================================================================
	@echo [execute $^]
	$(RUBY) $^.rb
	@echo [listing $^ files]
	ls -ltr $^*
	@echo [$^.rb and $^_5.rb are identical?]
	diff $^.rb $^_5.rb
	@echo "-> ok."
	@echo [$^.rb and $^_{4,3,2,1,0}.rb are identical except only the line?]
	!(diff $^_5.rb $^_4.rb || diff $^_4.rb $^_3.rb || diff $^_3.rb $^_2.rb || diff $^_2.rb $^_1.rb || diff $^_1.rb $^_0.rb)
	@echo "-> ok."

.PHONY: clean
clean:
	rm -rf Grace_kid.rb
	rm -rf Sully_*

.PHONY: fclean
fclean: clean
