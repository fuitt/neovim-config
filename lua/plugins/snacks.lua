return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
      terminal = {
        win = {
          position = "right",
          width = 0.3,
        },
      },
      picker = {
        sources = {
          explorer = {
            hidden = true, -- Show hidden files (dotfiles)
            ignored = true, -- Show Git-ignored files
          },
          files = {
            hidden = true, -- Show hidden files (dotfiles)
            ignored = true, -- Show Git-ignored files
          },
        },
      },
    },
  },
}
