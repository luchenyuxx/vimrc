let $PATH = $PATH . ':' . expand('~/.local/bin')

" Stop cursor blink
set gcr=a:block-blinkon0

" 开启行号显示
set number
" relative line number
set relativenumber
" 高亮显示当前行/列
"set cursorline
"set cursorcolumn

" 让配置变更立即生效, this doesn't work, maybe because I seperate the configs
" autocmd BufWritePost $MYVIMRC source $MYVIMRC

" enable mouse in terminal
set mouse=a

" Open window splits in various places
nmap <leader>sh :leftabove  vnew<CR>
nmap <leader>sl :rightbelow vnew<CR>
nmap <leader>sk :leftabove  new<CR>
nmap <leader>sj :rightbelow new<CR>

" enable Omni completion
set omnifunc=syntaxcomplete#Complete

" press <alt>+j/k to move line up/down in normal or insert mode
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
