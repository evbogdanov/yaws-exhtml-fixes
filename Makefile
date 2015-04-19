.PHONY: all compile run tests

all:
	rebar skip_deps=true compile

compile:
	rebar get-deps compile

run:
	erl -env ERL_LIBS `pwd`:`pwd`/deps +pc unicode -s yaws_exhtml_fixes start

tests:
	rebar skip_deps=true ct