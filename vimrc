"==============================================================================                                                                                                                                                     
"                                 ~My vimrc~                                        
"==============================================================================     
"                                                                                   
" Author:       Ryan Huber                                                          
" Source:       https://github.com/rphuber/dotFiles/                                
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
syntax on                                                                           
set noswapfile                                                                      
                                                                                    
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
" Key Mappings                                                                      
"------------------------------------------------------------------------------     
                                                                                    
let mapleader = "\<Space>"                                                          
map <leader>e :e <C-R>=escape(expand("%:p:h"),' ') . '/'<cr>                        
map <leader>s :split <C-R>=escape(expand("%:p:h"),' ') . '/'<cr>                    
map <leader>v :vnew <C-R>=escape(expand("%:p:h"),' ') . '/'<cr>                     
map <leader>ex :Explore<cr>                                                         
                                                                                    
nmap 0 ^                                                                            
nmap j gj                                                                           
nmap k gk                                                                           
                                                                                    
nmap <leader>vr :sp $MYVIMRC<cr>                                                    
nmap <leader>so :source $MYVIMRC<cr>                                                
                                                                                    
inoremap jj <ESC>                                                                   

if has("gui_running")
 let s:uname = system("uname")
 if s:uname == "Darwin\n"
  set guifont=Inconsolata\ for\ Powerline:h15
 endif
endif
