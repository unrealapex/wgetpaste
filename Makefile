.POSIX:
PREFIX = /usr/local

install:
	cp wgetpaste $(PREFIX)/bin

uninstall:
	rm -f $(PREFIX)/bin/wgetpaste

zsh-comp: install
	mkdir -p $(PREFIX)/share/zsh/site-functions
	cp _wgetpaste $(PREFIX)/share/zsh/site-functions

.PHONY: install uninstall zsh-comp
