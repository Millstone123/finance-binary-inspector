.PHONY: setup inspect

setup:
	@./bin/finance-probe --verify

inspect:
	@./bin/finance-probe --inspect
