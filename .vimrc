set tabstop=4
set shiftwidth=4
set mouse=a

syntax on
set smartindent
inoremap # X<BS>#

au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7

map <C-H> :tabprevious<CR>
map <C-L> :tabnext<CR>
