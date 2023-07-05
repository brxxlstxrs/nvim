return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufRead", "BufWinEnter", "BufNewFile" },
    opts = {
      ensure_installed = { "c", "lua", "python", "rust", "cpp", "vim", "regex", "bash", "markdown", "markdown_inline" },
      highlight = {
        enable = true,
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,

  },

  {
    "HiPhish/rainbow-delimiters.nvim",
    url = "https://gitlab.com/HiPhish/rainbow-delimiters.nvim",
    event = { "BufRead", "BufWinEnter", "BufNewFile" },
    config = function()
      local g = vim.g
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

  -- {
  --   "echasnovski/mini.pairs",
  --   event = "VeryLazy",
  --   opts = {},
  -- },
  {
    "m4xshen/autoclose.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        pair_spaces = true,
      },
    },
  },
}
