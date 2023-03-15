" setting tab indentation
set tabstop=4
set shiftwidth=4
set smartindent

" syntax highlighting
highlight uasmComment ctermfg=darkgrey
highlight cComment ctermfg=darkgrey
highlight verilogComment ctermfg=darkgrey
highlight vimComment ctermfg=darkgrey
highlight String ctermfg=red
syntax enable

" activate mouse support
set mouse=a
"
" automatically refresh files not written by vim
set autoread
au FocusGained,BufEnter * :checktime

" wildmenu
set wildmode=longest,full
set wildmenu

" highlight search matches and move cursor to next search
set hlsearch
set incsearch
nnoremap <silent> <Esc><Esc> :nohl<CR>

" ### Commands and Hot-Keys ###

" save with CTRL+S
nnoremap <silent> <C-S> :update<CR>

" move to previous/next tab
nnoremap <C-H> :tabprevious<CR>
nnoremap <C-L> :tabnext<CR>

" previous/next error in cwindow
nnoremap <C-J> :cnext<CR>
nnoremap <C-K> :cprev<CR>

" open new tab
nnoremap <TAB> :Texplore<CR>
nnoremap <S-TAB> :Vexplore<CR>


