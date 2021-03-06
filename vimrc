"==============================================================================
"                                 ~My vimrc~
"==============================================================================
"
" Author:       Ryan Huber
" Source:       https://github.com/rphuber/dotFiles/
"
"------------------------------------------------------------------------------
"
set nocompatible
set t_Co=256

"------------------------------------------------------------------------------
" Package Setup
"------------------------------------------------------------------------------

set rtp+=/Users/raguay/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim

let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

"-------------------------------------------------------------------------------
" Vundle Setup
"-------------------------------------------------------------------------------

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'auto-pairs'
Plugin 'surround.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'jparise/vim-graphql'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'maxmellon/vim-jsx-pretty'

Plugin 'elixir-lang/vim-elixir'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
"------------------------------------------------------------------------------

" Javascript Syntax Formatting
set concealcursor=nc
set conceallevel=1
let g:jsx_ext_required = 0
" let g:javascript_conceal_null       = "ø"
" let g:javascript_conceal_this       = "@"
" let g:javascript_conceal_return     = "⇚"
" let g:javascript_conceal_undefined  = "¿"
" let g:javascript_conceal_NaN        = "ℕ"
" let g:javascript_conceal_prototype  = "¶"
" let g:javascript_conceal_static     = "•"
let g:vim_jsx_pretty_colorful_config = 1
"------------------------------------------------------------------------------

" Gitgutter
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '•'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '|'
let g:gitgutter_sign_modified_removed = '|'
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" IndentLines
let g:indentLine_char = '┊'
let g:indentLine_color_term = 0
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indentLine_noConcealCursor="nc"

set modelines=0
set vb "flash screen rather than sound bell
set laststatus=2 " Always display the statusline in all windows
set list " show trailing whiteshace and tabs
set listchars=tab:▸\ ,trail:.,extends:>,precedes:<,nbsp:+
set mouse=a

set scrolloff=4
set autoindent
set cursorline
set backspace=indent,eol,start
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set relativenumber
set number
set hlsearch
set incsearch

set linebreak
set textwidth=80
set colorcolumn=+1,+2

" set background=dark
colorscheme jellybeans
highlight CursorLineNr cterm=NONE ctermbg=NONE ctermfg=Yellow

set guifont=Inconsolata\ for\ Powerline:h14
set clipboard=unnamed

"------------------------------------------------------------------------------
" Tabs
"-----------------------------------------------------------------------------
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2

"------------------------------------------------------------------------------
" Formatting
"------------------------------------------------------------------------------
syntax on

set noswapfile

"------------------------------------------------------------------------------
" Key Mappings
"------------------------------------------------------------------------------

inoremap jj <ESC>

nnoremap 0 ^
nnoremap j gj
nnoremap k gk

nmap <silent> <Left> <<
nmap <silent> <Right> >>
nmap <silent> <Up> <C-w>k
nmap <silent> <Down> <C-w>j

let mapleader = "\<Space>"
" Edit another file in the same directory as the current file
" " uses expression to extract path from current file's path
map <Leader>e :e <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>
map <Leader>s :split <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
map <Leader>v :vnew <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
map <Leader>tn :tabnew<CR>
map <Leader>tc :tabclose<CR>
map <Leader>ts :tab split<CR>
map <Leader>to :tabonly<CR>

" Split edit your vimrc. Type space, v, r in sequence to trigger
nmap <leader>vr :sp $MYVIMRC<cr>
" Source (reload) your vimrc. Type space, s, o in sequence to trigger
nmap <leader>so :source $MYVIMRC<cr>
" Explore using leader
nmap <leader>ex :Explore<cr>

hi Conceal ctermfg=red

autocmd InsertEnter * setlocal conceallevel=2 concealcursor=nc
autocmd InsertLeave * setlocal conceallevel=2 concealcursor=inc
