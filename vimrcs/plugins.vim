" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'eagletmt/ghcmod-vim', {'for': 'haskell'}
Plug 'eagletmt/neco-ghc',{'for': 'haskell'}
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Twinside/vim-hoogle', {'for': 'haskell'}
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'mpickering/hlint-refactor-vim', { 'for': 'haskell' }
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'ervandew/supertab'

" Initialize plugin system
call plug#end()

""""""""""" Nerd Tree """""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

"""""""""" syntastic """""""""""""
map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

""""""""""" ghc-mod """"""""""""""
map <silent> <Leader>hT :GhcModTypeInsert<CR>
map <silent> <Leader>hS :GhcModSplitFunCase<CR>
map <silent> <Leader>ht :GhcModType<CR>
"map <silent> te :GhcModTypeClear<CR>

"""""""""""" neco-ghc """"""""""""
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:ycm_semantic_triggers = {'haskell' : ['.']} "enable neco-ghc for YouCompleteMe
let g:necoghc_enable_detailed_browse = 1

""""""""""" ctrlp """""""""""""""
map <silent> <Leader><space> :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'

""""""""""" Hoogle """"""""""""""""
" Hoogle the word under the cursor
nnoremap <silent> <leader>hh :Hoogle<CR>
" Hoogle and prompt for input
nnoremap <leader>hH :Hoogle 
" Hoogle for detailed documentation (e.g. "Functor")
nnoremap <silent> <leader>hi :HoogleInfo<CR>
" Hoogle for detailed documentation and prompt for input
nnoremap <leader>hI :HoogleInfo 
" Hoogle, close the Hoogle window
nnoremap <silent> <leader>hz :HoogleClose<CR>

""""""""""" hlint-refactor-vim """""""""""
" Disable hlint-refactor-vim's default keybindings
let g:hlintRefactor#disableDefaultKeybindings = 1
" hlint-refactor-vim keybindings
map <silent> <leader>hr :call ApplyOneSuggestion()<CR>
map <silent> <leader>hR :call ApplyAllSuggestions()<CR>

"""""""""""" solarized """"""""""""""'
let g:solarized_termcolors=256
colorscheme solarized

""""""""""" supertab """"""""""""""""""'
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'
