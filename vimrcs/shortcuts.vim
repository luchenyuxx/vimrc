"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open window splits in various places
nmap <leader>sh :leftabove  vnew<CR>
nmap <leader>sl :rightbelow vnew<CR>
nmap <leader>sk :leftabove  new<CR>
nmap <leader>sj :rightbelow new<CR>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
noremap <leader>bc :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
noremap <leader>ba :bufdo bd<cr>

" Previous buffer, next buffer
noremap <leader>bl :bnext<cr>
noremap <leader>bh :bprevious<cr>

" Useful mappings for managing tabs
noremap <leader>tn :tabnew<cr>
" Close all other tabs
noremap <leader>to :tabonly<cr>
noremap <leader>tc :tabclose<cr>
" noremap <leader>tm :tabmove<cr> 
noremap <leader>tl :tabnext<cr> 
noremap <leader>th :tabp<CR> 

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Move a line of text using ALT+[jk] or Command+[jk] on mac (not working)
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
" map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
" map <leader>sn ]s
" map <leader>sp [s
" map <leader>sa zg
" map <leader>s? z=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
" noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
" map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
" map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
" map <leader>pp :setlocal paste!<cr>
