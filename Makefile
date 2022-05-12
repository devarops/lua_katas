all:
	src/main.lua

.PHONY: \
	all \
	check \
	init \
	tests

check:
	luacheck src

init: tests

tests:
	busted tests/test.lua
