all:
	src/main.lua

.PHONY: \
	all \
	check \
	green \
	init \
	red \
	refactor \
	tests

check:
	luacheck src

green: check
	busted tests/test.lua \
	&& (git add src/*.lua tests/*.lua && git commit -m "✅ Pass tests. This is the way.") \
	|| git restore .
	chmod g+w -R .

init: tests
	git config --global --add safe.directory /workdir
	git config --global user.name "Evaristo Rojas"
	git config --global user.email "evaristo.rojas@islas.org.mx"

red: check
	busted tests/test.lua \
	&& git restore . \
	|| (git add tests/*.lua && git commit -m "🛑🧪 Fail tests. This is the way.")
	chmod g+w -R .

refactor: check
	busted tests/test.lua \
	&& (git add src/*.lua tests/*.lua && git commit -m "♻️  Refactor. This is the way.") \
	|| git restore .
	chmod g+w -R .

tests:
	busted tests/test.lua
