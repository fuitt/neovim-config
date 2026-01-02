-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Language settings
opt.helplang = "en"

-- Encoding settings
opt.encoding = "utf-8"
opt.fileencodings = "utf-8"

-- Enable system clipboard integration
opt.clipboard = "unnamedplus"

-- Disable octal number format recognition
opt.nrformats = ""

-- Highlight current line and column
opt.cursorline = true
opt.cursorcolumn = true
