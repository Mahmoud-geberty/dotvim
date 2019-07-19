set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" Keep Plugin commands between vundle#begin/end.

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

"you complete me plugin
Plugin 'valloric/youcompleteme'


Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-repeat'

"commenting plugin
Plugin 'tpope/vim-commentary'


"vim solarized colorscheme.
Plugin 'altercation/vim-colors-solarized'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'


" javascript and jsx syntax and highlighting.
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

"Emmet for html and jsx shortcuts
Plugin 'mattn/emmet-vim'

"Flake8 for python
Plugin 'nvie/vim-flake8'

"Pymode for python.
Plugin 'klen/python-mode'

"Auto pairs.
"auto-close brackets and what not!
Plugin 'jiangmiao/auto-pairs'

"javascript labs syntax.
Plugin 'othree/javascript-libraries-syntax.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"" Pymode config""""
"""""""""""""
let g:pymode_python = 'python3'
"""""""""""""""""""""""""""

"" javascript labs syntax config"
let g:used_javascript_libs = 'react, chai, vue, d3, jquery'

"solarized colorscheme settings 
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
"""""""""""""""""""""""

"UltiSnips config
""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="normal"
"""""""""""""""""""""""""""

autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

set number
set relativenumber " show relative line numbers

set noswapfile
set nobackup
set nowb

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

"mappings
"noremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O

command! -nargs=* Wrap set wrap linebreak nolist
