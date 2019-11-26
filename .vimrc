set tabstop=4
set shiftwidth=4
set mouse=a

set smartindent
set cindent
set cinkeys-=0#
set indentkeys-=0#

au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7

map <C-H> :tabprevious<CR>
map <C-L> :tabnext<CR>
