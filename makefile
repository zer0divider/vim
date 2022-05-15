.PHONY: install
install:
	cp .vimrc ~/.vimrc
	mkdir -p ~/.vim
	mkdir -p ~/.vim/syntax
	mkdir -p ~/.vim/plugin
	mkdir -p ~/.vim/indent
	mkdir -p ~/.vim/ftdetect
	cp -r syntax/* ~/.vim/syntax/
	cp -r plugin/* ~/.vim/plugin/
	cp -r indent/* ~/.vim/indent/
	cp -r ftdetect/* ~/.vim/ftdetect/

