return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufRead", "BufNewFile" },
    opts = {
      ensure_installed = { "c", "lua", "python", "rust", "cpp", "vim", "regex", "bash", "markdown", "markdown_inline" },
      highlight = {
        enable = true,
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,

    dependencies = {
      {
        "HiPhish/rainbow-delimiters.nvim",
        url = "https://gitlab.com/HiPhish/rainbow-delimiters.nvim",
        config = function()
          local g = vim.g
          local rainbow_delimiters = require 'rainbow-delimiters'
          g.rainbow_delimiters = {
            highlight = {
              'RainbowDelimiterOrange',
              'RainbowDelimiterYellow',
              'RainbowDelimiterCyan',
              'RainbowDelimiterGreen',
              'RainbowDelimiterBlue',
              'RainbowDelimiterViolet',
              -- 'RainbowDelimiterRed',
            },
          }
        end,
      },
    },
  },
}
