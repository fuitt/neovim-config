return {
  {
    "NvChad/nvim-colorizer.lua",
    event = "VeryLazy",
    config = function()
      require("colorizer").setup({
        filetypes = { "*" }, -- Highlight all files
        user_default_options = {
          names = false, -- color names (e.g. "blue")
        },
      })
    end,
  },
}
