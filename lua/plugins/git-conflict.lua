return {
  "akinsho/git-conflict.nvim",
  version = "*",
  event = "BufReadPre",
  config = function()
    require("git-conflict").setup({
      default_mappings = false,
      default_commands = true,
      disable_diagnostics = false,
      list_opener = "copen",
      highlights = {
        incoming = "GitConflictIncoming",
        current = "GitConflictCurrent",
      },
    })

    local map = vim.keymap.set
    map("n", "<leader>gco", "<cmd>GitConflictChooseOurs<cr>", { desc = "Choose Ours" })
    map("n", "<leader>gct", "<cmd>GitConflictChooseTheirs<cr>", { desc = "Choose Theirs" })
    map("n", "<leader>gcb", "<cmd>GitConflictChooseBoth<cr>", { desc = "Choose Both" })
    map("n", "<leader>gc0", "<cmd>GitConflictChooseNone<cr>", { desc = "Choose None" })
    map("n", "]x", "<cmd>GitConflictNextConflict<cr>", { desc = "Next Conflict" })
    map("n", "[x", "<cmd>GitConflictPrevConflict<cr>", { desc = "Prev Conflict" })
  end,
}
