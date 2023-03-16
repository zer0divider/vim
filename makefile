.PHONY: install help
plugins=vim-easy-align
plugin_dir=~/.vim/bundle

help:
	@echo "Type 'make install' to install to your local ~/.vim directory"

$(plugin_dir):
	mkdir -p $@

install: $(plugin_dir) $(addprefix $(plugin_dir)/,$(plugins))
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
	cp .gtkwaverc ~/.gtkwaverc

$(plugin_dir)/vim-easy-align:
	git clone https://github.com/junegunn/vim-easy-align $@
