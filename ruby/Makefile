RUBY		:=	ruby
RUBYFLAGS	:=	

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
	$(RUBY) $^.rb > $^.out
	@echo =====================================================================
	@cat $^.rb
	@echo
	@echo =====================================================================
	diff $^.rb $^_kid.rb