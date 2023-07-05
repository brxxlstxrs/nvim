return {
  {
    'projekt0n/github-nvim-theme',
    lazy = true,
    priority = 1000,
    opts = {
      options = {
        -- hide_end_of_buffer = false,
        transparent = true,
      },
    },
    config = function(_, opts)
      require('github-theme').setup(opts)
    end,
  },

  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      commentStyle = {},
      keywordStyle = {},
      transparent = true,
      background = {
        dark = "dragon",
      },
    },
  },
}
