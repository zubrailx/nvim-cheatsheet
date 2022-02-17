set nocompatible


" Autocmd "{{{
" -----------------------------------------------------------------------------
" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

"}}}


" Options "{{{
" -----------------------------------------------------------------------------
"set fileencodings=utf-8,sjis,euc-jp,latin
set fileencodings=utf-8
set encoding=utf-8
" set backup while while being written
set nobackup
set writebackup
set shell=bash
set clipboard+=unnamedplus

"}}}


" Visual representation "{{{
" -----------------------------------------------------------------------------
" set title of the window
set title
" relative numbering
set nu rnu
set showcmd
set cmdheight=1
set laststatus=2
" Don't redraw while executing macros (good performance config)
set lazyredraw
set nowrap

"}}}


" Movement "{{{
" -----------------------------------------------------------------------------
set scrolloff=8
set mouse=a

"}}}


" Searching "{{{
" -----------------------------------------------------------------------------
set hlsearch
" ignore case when searching
set ignorecase
" finding files - search down into subfolders
set path+=**
"" set wildignore+=*/node_modules/*

" incremental substitution (nvim)
if has('nvim')
  set inccommand=split
endif

"}}}


" Highlights "{{{
" -----------------------------------------------------------------------------
set cursorline

"}}}


" Syntax, theme "{{{
" -----------------------------------------------------------------------------
syntax enable set background=dark

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  " enable pseudo-transparency for a floating window. 0 - fully opaque, 100 - fully transparent
  "" set winblend=0
  " enable pseudo-transparency for the popup-menu. 0 - fully opaque, 100 - fully transparent
  "" set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/neo-solarized.vim
  colorscheme neo-solarized
endif

"}}}


" File types "{{{
" -----------------------------------------------------------------------------
au BufRead,BufNewFile *.inc,*.asm set filetype=nasm

"}}}


" Imports "{{{
" -----------------------------------------------------------------------------
runtime ./plug.vim
runtime ./maps.vim

"}}}


" Editing "{{{
" -----------------------------------------------------------------------------
filetype plugin indent on
set autoindent
set smartindent
" use spaces to insert tab
set expandtab
" use shiftwidth and tabstop
set smarttab
set tabstop=2
" used with >> and <<
set shiftwidth=2
" when a bracket is inserted, NOT briefly jump to the matching one
set noshowmatch
set backspace=start,eol,indent

"}}}


" vim: set foldmethod=marker foldlevel=0:

