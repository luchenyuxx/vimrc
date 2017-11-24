" =======================================================
" This file contains the essential plugins which you can't 
" miss.
" =======================================================

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" File system explorer
Plug 'scrooloose/nerdtree'

" Syntax checking plugin
Plug 'vim-syntastic/syntastic'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plug 'ctrlpvim/ctrlp.vim'

" A light and configurable statusline/tabline plugin
Plug 'itchyny/lightline.vim'

" Mappings to easily delete, change and add surroundings in pairs
Plug 'tpope/vim-surround'

" Tex filtering and alignment
Plug 'godlygeek/tabular'

" Peaksea color scheme
Plug 'vim-scripts/peaksea'

" A personal wiki, a number of linked text files that have their own 
" syntax highlighting
Plug 'vimwiki/vimwiki'

" Plug 'eagletmt/ghcmod-vim', {'for': 'haskell'}
" Plug 'eagletmt/neco-ghc',{'for': 'haskell'}
" Search tool (need to work with ack)
" Plug 'mileszs/ack.vim'
" Fast, as-you-type, fuzzy-search code completion engine
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'Twinside/vim-hoogle', {'for': 'haskell'}
" Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
" Plug 'mpickering/hlint-refactor-vim', { 'for': 'haskell' }
" Plug 'https://github.com/altercation/vim-colors-solarized.git'
" For insert completion
" Plug 'ervandew/supertab'
" Git wrapper
" Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()

""""""""""" Nerd Tree """""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '.DS_Store']
let g:NERDTreeWinSize=35

" Shortcuts
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

"""""""""" syntastic """""""""""""
" Conflict with split window, check shortcuts.vim
" map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

""""""""""" ctrlp """""""""""""""
" map <silent> <Leader><space> :CtrlP()<CR>
noremap <C-p> :CtrlP()<CR>
" noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'

"============= peaksea ============="
if (&t_Co == 256)
    colorscheme peaksea
endif

"=============== lightline ==========="
let g:lightline = {'active':{'left':[['mode', 'paste'], ['readonly', 'relativepath', 'modified']]}}

"================ vimwiki ============"
let g:vimwiki_list = [{'path':'~/Sync/vimwiki'}]

""""""""""" Hoogle """"""""""""""""
" Hoogle the word under the cursor
" nnoremap <silent> <leader>hh :Hoogle<CR>
" Hoogle and prompt for input
" nnoremap <leader>hH :Hoogle 
" Hoogle for detailed documentation (e.g. "Functor")
" nnoremap <silent> <leader>hi :HoogleInfo<CR>
" Hoogle for detailed documentation and prompt for input
" nnoremap <leader>hI :HoogleInfo 
" Hoogle, close the Hoogle window
" nnoremap <silent> <leader>hz :HoogleClose<CR>

""""""""""" hlint-refactor-vim """""""""""
" Disable hlint-refactor-vim's default keybindings
" let g:hlintRefactor#disableDefaultKeybindings = 1
" hlint-refactor-vim keybindings
" map <silent> <leader>hr :call ApplyOneSuggestion()<CR>
" map <silent> <leader>hR :call ApplyAllSuggestions()<CR>

"""""""""""" solarized """"""""""""""'
" let g:solarized_termcolors=256
" colorscheme solarized

""""""""""" supertab """"""""""""""""""'
" let g:SuperTabDefaultCompletionType = '<c-x><c-o>'
"=========== lightline =========="
" 
""""""""""" ghc-mod """"""""""""""
" map <silent> <Leader>hT :GhcModTypeInsert<CR>
" map <silent> <Leader>hS :GhcModSplitFunCase<CR>
" map <silent> <Leader>ht :GhcModType<CR>
" map <silent> te :GhcModTypeClear<CR>

"""""""""""" neco-ghc """"""""""""
" let g:haskellmode_completion_ghc = 0
" autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
" let g:ycm_semantic_triggers = {'haskell' : ['.']} "enable neco-ghc for YouCompleteMe
" let g:necoghc_enable_detailed_browse = 1
" let g:haskellmode_completion_ghc = 0
" autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
" let g:ycm_semantic_triggers = {'haskell' : ['re!\w']} "enable neco-ghc for YouCompleteMe
" let g:necoghc_enable_detailed_browse = 1

