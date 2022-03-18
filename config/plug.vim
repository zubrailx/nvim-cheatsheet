if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'preservim/nerdcommenter'

Plug 'lervag/vimtex'
  let g:tex_flavor='latex'
  let g:vimtex_view_method='zathura'
  let g:vimtex_quickfix_mode=0
  let g:vimtex_compiler_latexmk = {
          \ 'build_dir' : 'build',
  \}
Plug 'KeitaNakamura/tex-conceal.vim'
  set conceallevel=1
  let g:tex_conceal='abdmg'
  hi Conceal ctermbg=none

Plug 'sirver/ultisnips'
  let g:UltiSnipsExpandTrigger = '<Tab>'
  let g:UltiSnipsJumpForwardTrigger = '<Tab>'
  let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'
  let g:UltiSnipsSnippetDirectories=["ultisnippets"]


if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  Plug 'jackguo380/vim-lsp-cxx-highlight'
endif

call plug#end()

" TODO replace with lua

" vim: set foldmethod=marker foldlevel=0:
