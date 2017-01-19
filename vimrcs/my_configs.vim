" Stop cursor blink
set gcr=a:block-blinkon0

" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn

" 让配置变更立即生效, this doesn't work, maybe because I seperate the configs
" autocmd BufWritePost $MYVIMRC source $MYVIMRC
