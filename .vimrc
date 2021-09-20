" setting tab indentation
set tabstop=4
set shiftwidth=4

" syntax highlighting and smartindentation
set smartindent
syntax on

" activate mouse support
set mouse=a

" automatically refresh files not written by vim
set autoread
au FocusGained,BufEnter * :checktime

" wildmenu
set wildmenu

" support arm-assembly syntax
au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7

" highlight search matches and move cursor to next search
set hlsearch
set incsearch

" ### Commands and Hot-Keys ###

" move to previous/next tab
map <C-H> :tabprevious<CR>
map <C-L> :tabnext<CR>

" make/make run (move to first tab and open cwindow)
map <F5> :tabfirst<CR>:copen<CR>:make -j<CR>

" previous/next error in cwindow
map <C-J> :cnext<CR>
map <C-K> :cprev<CR>

" open new tab
map <TAB> :Texplore<CR>
map <S-TAB> :Vexplore<CR>
