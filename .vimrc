" plugins
set runtimepath^=~/.vim/bundle/vim-easy-align

" setting tab indentation
set tabstop=4
set shiftwidth=4
set smartindent

" syntax highlighting
highlight UASM_comment ctermfg=darkgrey
highlight cComment ctermfg=darkgrey
highlight makeComment ctermfg=darkgrey
highlight verilogComment ctermfg=darkgrey
highlight pythonComment ctermfg=darkgrey
highlight vimComment ctermfg=darkgrey
highlight texComment ctermfg=darkgrey
highlight String ctermfg=red
highlight Search ctermfg=darkblue
highlight visual ctermbg=black
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
nnoremap <C-J> :cnext<CR>zz
nnoremap <C-K> :cprev<CR>zz

" open new tab
nnoremap <S-TAB> :Vexplore<CR>
nnoremap <TAB> :Texplore<CR>
nnoremap <S-E> :Explore<CR>


" mappings for plugins
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)EasyAlign

" store last visited tab
au TabLeave * let g:lasttab = tabpagenr()

" go back to previously visited tab (e.g. after done quick fixing in first tab)
nnoremap <silent> <F6> :exe "tabn ".g:lasttab<CR>

" run make -> assumes that first tab contains quick fix window
nnoremap <silent> <F5> :tabfirst<CR>:make<CR>

" highlight current line
" NOTE: deactivated because it breaks other highlights (e.g. 'TODO')
" set cursorline
highlight CursorLine cterm=None ctermbg=black

" no swap files
set noswapfile
