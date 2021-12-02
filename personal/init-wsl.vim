set nocompatible
"-----------------------------------Plugins------------------------------------------"

call plug#begin(stdpath('data'))

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'preservim/nerdcommenter'
Plug 'ervandew/supertab'

call plug#end()

"-----------------------------File Formatting, Tabindents---------------------------"

" au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.html
"    \ set tabstop=4 |
"    \ set softtabstop=4 |
"    \ set shiftwidth=4 |
"    \ set textwidth=120 |
"    \ set expandtab |
"    \ set autoindent |
"    \ set fileformat=unix |

au BufRead,BufNewFile *.inc,*.asm set filetype=nasm

set modeline
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=100
set expandtab
set autoindent " enable auto indentation of lines
set backspace=indent,eol,start " let backspace delete over lines
set cindent " allow vim to best-effort guess the indentation
set fileformat=unix

" open new buffers without saving current modifications (buffer remains open)
set hidden

"-------------------------------------Shell-----------------------------------------"
" set shell=C:\\Windows\\system32\\WindowsPowerShell\\v1.0\\powershell.exe
" command :terminal not working coz need to change shell to cmd.exe (but it is useless)
"
if has("win32")
            set shell=C:\\Windows\\system32\\WindowsPowerShell\\v1.0\\powershell.exe  
            set shellcmdflag=/c\ powershell.exe\ -NoLogo\ -NoProfile\ -NonInteractive\ -ExecutionPolicy\ RemoteSigned
                set shellpipe=|
                    set shellredir=>
                endif

                function! Test()
                      echo system("dir -name")
                  endfunction


"--------------------------------Layout, Encoding-----------------------------------"
"goto normal mode with russian layout

"full utf-8 encoding
set langmenu=en_US.UTF-8
set encoding=utf-8
scriptencoding utf-8
setglobal fileencoding=utf-8

"------------------------------------GUI--------------------------------------------"

set guioptions=0 "Отключаем панели прокрутки в GUI
set showtabline=0 "Отключаем панель табов (окошки FTW)
set ttimeoutlen=10 "Понижаем задержку ввода escape последовательностей

syntax on

set statusline+=%F
set laststatus=2
" set showtabline=2

set nu rnu " relative line numbering
set showcmd
set clipboard=unnamed " public copy/paste register
set ruler
set noswapfile " doesn't create swap files
set noshowmode
set shortmess+=c
set omnifunc=syntaxcomplete#Complete


set pastetoggle=<F2> " enable paste mode

set wildmenu "graphical auto complete menu
set lazyredraw "redraws the screne when it needs to
set showmatch "highlights matching brackets
set incsearch "search as characters are entered
set hlsearch "highlights matching searches

set visualbell

"-----------------------------------Colors, Fonts-----------------------------------"

" true colours
set background=dark
set t_Co=256

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme = 'jellybeans'
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

let g:airline_theme='raven'
colorscheme rakr

"  let g:airline#extensions#default#section_truncate_width = {
"      \ 'b': 79,
"      \ 'x': 60,
"      \ 'y': 88,
"      \ 'z': 45,
"     \ 'warning': 80,
"      \ 'error': 80,
"      \ }
"-------------------------------------Shortcuts------------------------------------"
" inoremap <C-L> <Esc>

" TERMINAL MODE
tnoremap <Esc> <C-\><C-n>
tnoremap <C-[> <C-\><C-n>
" simulating i + <C-r>
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
