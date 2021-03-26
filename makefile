.PHONY: install
install:
	cp .vimrc ~/.vimrc
	mkdir -p ~/.vim
	mkdir -p ~/.vim/syntax
	mkdir -p ~/.vim/plugin
	cp -r syntax/* ~/.vim/syntax/
	cp -r plugin/* ~/.vim/plugin/

