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
