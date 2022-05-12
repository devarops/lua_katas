all:
	src/main.lua

.PHONY: \
	all \
	init \
	tests

init: tests

tests:
	busted tests/test.lua
