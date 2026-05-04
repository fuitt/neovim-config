return {
  {
    "Mofiqul/vscode.nvim",
    opts = {
      -- disable_nvimtree_bg = true,
      group_overrides = {
        -- Change the background color of the cursor line and cursor column
        -- CursorLine = { bg = "#2D2C57" },
        -- CursorColumn = { bg = "#2D2C57" },
        CursorLine = { bg = "#04395E" },
        CursorColumn = { bg = "#04395E" },

        -- Change the color of Git signs
        GitSignsAdd = { fg = "#81B88B" },
        GitSignsChange = { fg = "#4FC1FF" },
        GitSignsDelete = { fg = "#C74E39" },

        -- Change the background color of the popup menu selection
        -- PmenuSel = { bg = "#2D2C57" },

        -- Change the color of Git conflict markers
        GitConflictCurrent = { bg = "#264F78" },
        GitConflictIncoming = { bg = "#1B4721" },

        -- Change the background color of markdown headers and code blocks
        RenderMarkdownCode = { bg = "#343B41" },
        RenderMarkdownH1Bg = { bg = "#1F1F1F" },
        RenderMarkdownH2Bg = { bg = "#1F1F1F" },
        RenderMarkdownH3Bg = { bg = "#1F1F1F" },
        RenderMarkdownH4Bg = { bg = "#1F1F1F" },
        RenderMarkdownH5Bg = { bg = "#1F1F1F" },
        RenderMarkdownH6Bg = { bg = "#1F1F1F" },

        NeovimLogoGreen = { fg = "#54A23D", bold = true },
        NeovimLogoBlue = { fg = "#3791D4", bold = true },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
