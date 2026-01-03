return {
  {
    "Mofiqul/vscode.nvim",
    opts = {
      group_overrides = {
        -- Change the background color of the cursor line and cursor column
        CursorLine = { bg = "#04395E" },
        CursorColumn = { bg = "#04395E" },

        -- Change the color of Git signs
        GitSignsAdd = { fg = "#81B88B" },
        GitSignsChange = { fg = "#4FC1FF" },
        GitSignsDelete = { fg = "#C74E39" },

        -- Change the colors for Git conflict markers
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
