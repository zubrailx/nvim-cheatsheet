if !exists('g:lspconfig')
  finish
endif

lua << EOF
local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Mappings.
  local opts = { noremap=true, silent=true }
end

nvim_lsp.pyright.setup {}

nvim_lsp.ccls.setup {
  init_options = {
    highlight = {
      lsRanges = true;
    }
  },
}
EOF

