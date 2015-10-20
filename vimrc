"==============================================================================
"                                 ~My vimrc~
"==============================================================================
"
" Author:       Ryan Huber
" Source:       https://github.com/rphuber/dotFiles/new/master
"
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
" Setup
"------------------------------------------------------------------------------

" Plugins
" -------
call pathogen#infect()

set rtp+=/Users/raguay/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
 

filetype off
filetype plugin indent on
set nocompatible
set modelines=0
set vb "flash screen rather than sound bell
set laststatus=2 " Always display the statusline in all windows

set scrolloff=4
set autoindent
set cursorline
set backspace=indent,eol,start
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
" set number
set relativenumber

set linebreak
set textwidth=80
set colorcolumn=+1,+2,+3,+4

" set background=dark
colorscheme jellybeans
" highlight LineNr ctermfg=DarkGrey

set guifont=Inconsolata\ for\ Powerline:h14

"------------------------------------------------------------------------------
" Tabs
"-----------------------------------------------------------------------------
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


"------------------------------------------------------------------------------
" Formatting
"------------------------------------------------------------------------------
syntax on

set noswapfile

"------------------------------------------------------------------------------
" Key Mappings
"------------------------------------------------------------------------------
" NERDTree
map <C-n> :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

" Normal Mode
" -----------------------------------------------------------------------------
nmap 0 ^ 
nmap j gj
nmap k gk

" Insert Mode
" -----------------------------------------------------------------------------
inoremap jj <ESC>

 
if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Inconsolata\ for\ Powerline:h15
   endif
endif
