return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    keys = {
      { '<space>e', vim.diagnostic.open_float },
      { '[d', vim.diagnostic.goto_prev },
      { ']d', vim.diagnostic.goto_next },
      { '<space>q', vim.diagnostic.setloclist },
    },
    config = function()
      vim.diagnostic.config({
        virtual_text = {
          prefix = '●', -- Could be '■', '▎', 'x'
        }
      })
      local lspconfig = require "lspconfig"
      lspconfig.rust_analyzer.setup {}
    end,
  },
}
