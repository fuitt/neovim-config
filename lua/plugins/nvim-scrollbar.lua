return {
  "petertriho/nvim-scrollbar",
  event = "VeryLazy",
  config = function()
    require("scrollbar").setup({
      -- Scrollbar handle color (matches VSCode default scrollbar)
      handle = {
        color = "#797979", -- VSCode: scrollbarSlider.background
      },

      -- Marks for search results, diagnostics, etc.
      marks = {
        Search = { color = "#d19a66" }, -- VSCode: editor.findMatchHighlightBackground
        Error = { color = "#f14c4c" }, -- VSCode: editorError.foreground
        Warn = { color = "#cca700" }, -- VSCode: editorWarning.foreground
        Info = { color = "#3794ff" }, -- VSCode: editorInfo.foreground
        Hint = { color = "#16c60c" }, -- VSCode: editorHint.foreground
        Misc = { color = "#646464" }, -- VSCode: scrollbarSlider.hoverBackground
      },

      -- Enable handlers for diagnostics and search
      handlers = {
        diagnostic = true,
        search = true,
        gitsigns = true,
      },
    })

    -- Setup handlers for search and diagnostics
    require("scrollbar.handlers.search").setup()
    require("scrollbar.handlers.diagnostic").setup()
  end,
}
