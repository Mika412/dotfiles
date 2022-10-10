-- Shorten function name
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set
keymap("", "<Space>", "<Nop>", opts)
keymap('n', '<C-n>', '<CMD>NvimTreeToggle<CR>', opts)

vim.g.mapleader = " "
vim.g.maplocalleader = " "
