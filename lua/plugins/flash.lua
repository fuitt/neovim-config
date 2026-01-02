return {
  "folke/flash.nvim",
  keys = {
    -- Disable LazyVim default keymaps
    { "s", false },
    { "S", false },
    { "r", false },
    { "R", false },

    -- Basic flash jump
    {
      "gs",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash Jump",
    },
    -- Treesitter-based jump
    {
      "gS",
      mode = { "n", "x", "o" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },
    -- Remote jump
    {
      "gr",
      mode = { "o" },
      function()
        require("flash").remote()
      end,
      desc = "Flash Remote",
    },
    -- Treesitter search
    {
      "gR",
      mode = { "x", "o" },
      function()
        require("flash").treesitter_search()
      end,
      desc = "Flash Treesitter Search",
    },
  },
}
