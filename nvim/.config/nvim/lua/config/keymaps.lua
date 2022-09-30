-- Shorten function name
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap('n', '<C-n>', '<CMD>NvimTreeToggle<CR>', opts)
