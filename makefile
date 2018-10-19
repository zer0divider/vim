.PHONY: install
install:
	cp .vimrc ~/.vimrc
	mkdir ~/.vim -p
	cp -r syntax ~/.vim/syntax

