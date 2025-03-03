.POSIX:
PREFIX = /usr/local

install:
	cp wgetpaste $(DESTDIR)$(PREFIX)/bin

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/wgetpaste

zsh-comp: install
	mkdir -p $(DESTDIR)$(PREFIX)/share/zsh/site-functions
	cp _wgetpaste $(DESTDIR)$(PREFIX)/share/zsh/site-functions

.PHONY: install uninstall zsh-comp
