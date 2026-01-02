-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Exit insert mode
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- Toggle relative/absolute line numbers
vim.keymap.set("n", "<F3>", function()
  if vim.wo.relativenumber then
    vim.wo.relativenumber = false
    vim.wo.number = true
  else
    vim.wo.relativenumber = true
    vim.wo.number = true
  end
end, { desc = "Toggle relative/absolute line numbers" })

-- Toggle terminal
vim.keymap.set({ "n", "t" }, "<leader>ft", function()
  require("snacks").terminal.toggle()
end, { desc = "Toggle Terminal" })
