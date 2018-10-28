set tabstop=4
set shiftwidth=4

set smartindent

au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7

au FocusGained,BufEnter * :silent! !

au FocusLost,WinLeave * :silent! w!

map <C-H> :tabprevious<CR>
map <C-L> :tabnext<CR>
