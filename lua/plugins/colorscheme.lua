return {
  {
    "Mofiqul/vscode.nvim",
    opts = {
      group_overrides = {
        -- Change the background color of the cursor line and cursor column
        CursorLine = { bg = "#04395E" }, -- Dark blue shade
        CursorColumn = { bg = "#04395E" }, -- Dark blue shade

        -- Change the color of Git signs
        GitSignsAdd = { fg = "#81B88B" },
        GitSignsChange = { fg = "#4FC1FF" },
        GitSignsDelete = { fg = "#C74E39" },

        -- Change the colors for Git conflict markers
        GitConflictCurrent = { bg = "#264F78" },
        GitConflictIncoming = { bg = "#1B4721" },
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
