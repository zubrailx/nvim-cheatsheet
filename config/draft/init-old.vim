set nocompatible
"-----------------------------------Plugins------------------------------------------"

"Install PlugManager
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

call plug#begin(stdpath('data'))

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
" Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
" Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'preservim/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'lervag/vimtex'
"
" latex
" Plug 'lervag/vimtex'

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
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=100
set expandtab
set autoindent " enable auto indentation of lines
set backspace=indent,eol,start " let backspace delete over lines
set cindent " allow vim to best-effort guess the indentation
set fileformat=unix
filetype plugin on

" open new buffers without saving current modifications (buffer remains open)
set hidden

" ---------------------------------Comments-----------------------------------------"


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

syntax enable

set statusline+=%F
set laststatus=2
" set showtabline=2

set nu rnu " relative line numbering
set showcmd
set clipboard+=unnamedplus
set ruler
set noswapfile " doesn't create swap files
set noshowmode
set shortmess+=c
set omnifunc=syntaxcomplete#Complete
set mouse=a


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
let g:airline_theme = 'minimalist'
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

"-------------------------------------Latex-0--------------------------------------"
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode=2

let g:vimtex_compiler_latexmk = {
        \ 'build_dir' : 'build',
        \ 'callback' : 1,
        \ 'continuous' : 1,
        \ 'executable' : 'latexmk',
        \ 'hooks' : [],
        \ 'options' : [
        \   '-verbose',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}
"set conceallevel=1
"let g:tex_conceal='abdmg'


" let g:vimtex_view_general_viewer = 'okular'
" let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
"
" let g:vimtex_compiler_method = 'latexrun'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
"
" let maplocalleader = ","
