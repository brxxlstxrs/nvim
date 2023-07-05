return {
  {
    'projekt0n/github-nvim-theme',
    name = "github-theme",
    lazy = true,
    priority = 1000,
    opts = {
      options = {
        -- hide_end_of_buffer = false,
        transparent = true,
      },
    },
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
