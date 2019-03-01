"For the youcompleteme plugin"
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'szw/vim-tags'
Plug 'taketwo/vim-ros'
"Plug 'cjrh/vim-conda'
call plug#end()

"Open NERDTree automatically when vim starts up on opening a directory"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"Highlight search"
set hlsearch

"Turn off Background Color Erase"
if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif

"Color Scheme"
colorscheme lucius 
LuciusLightHighContrast

"For Python Environment"
let g:ycm_python_binary_path = 'python'  

"Set tab to be 4 spaces"
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab



"Add shortcut for YouCompleteMe plugin"
nmap <F1> :YcmCompleter GoTo<CR>
