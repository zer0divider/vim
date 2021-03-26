# Personal overview for useful VIM commands

## Install
* `sudo apt-get install vim`
* install `.vimrc` and plugins by running `make` from this folder

## ctags:
* run `ctags -R --c-kinds=+p <library-directories>` in source directory to create tags-file
* `:tag <tag>` to search for a given tag
* `g ]` to jump to tag currently under cursor with selection window
* `CTRL-]` to directly jump to tag currently under cursor
* `CTRL-w ]` like `g ]` but open file with tag in horizontal split
* CTRL-t to move back in tag stack

## Search:
* `/keyword` to search for `keyword`
* `/\<keyword\>` to search for exactly `keyword`
* `n` to move to next match
* `N` to move to previous match
* `*` to search for exact word under cursor or `#` to search backwards
* `g*` or `g#` to search for not exact word under cursor
* `\c` after search pattern for case insensitive search, `\C` after pattern for case sensitive (default)
* `:set ignorecase` to set default search to case insensitive
* `:noh` to turn off highlighting (until next search)
* `:set nohlsearch` to permanently turn off highlighting

## Replace:
* `:%s/keyword/new_keyword/gc` to replace `keyword` with `new_keyword`
	* `g` (global): replace all occurences in line
	* `c` (confirm): ask for every replacement
* you can also select a region in visual mode (`SHIFT-v`) and then type `:s/keyword/new_keyword/gc`

## Registers:
* when copying (`y`), deleting (`d`) or pasting (`p`) the content of the current register is read or written to
* `" a` to use register `a` for next copy/paste command
* `:register` to show all register content

## Markers:
* useful to quickly jump to different positions in a file
* `m a` to mark current position with `a` (upper case letter for marks accross files)
* `' a` to jump to position with mark `a`

## Plugins:

### a.vim
* `:A` switches to the header file corresponding to the current file being edited (or vise versa)
* `:AS` splits and switches
* `:AV` vertical splits and switches
* `:AT` new tab and switches
* `:AN` cycles through matches
* `:IH` switches to file under cursor
* `:IHS` splits and switches
* `:IHV` vertical splits and switches
* `:IHT` new tab and switches
* `:IHN` cycles through matches 


## Other stuff:
* `:set number` to show line numbers
* when currently entering command (`:...`) `CTRL-r CTRL-w` copy current word under cursor into command line
