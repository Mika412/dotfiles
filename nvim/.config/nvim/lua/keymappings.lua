
--- Telescope
-- Seach files by name 
vim.api.nvim_set_keymap('n', '<C-P>', '<cmd>lua require("telescope.builtin").find_files()<cr>', {noremap = true})
-- Seach for text in files
vim.api.nvim_set_keymap('n', '<space>f', '<cmd>lua require("telescope.builtin").live_grep()<cr>', {noremap = true})
-- Seach for text in files
vim.api.nvim_set_keymap('n', '<space><space>', '<cmd>lua require("telescope.builtin").buffers()<cr>', {noremap = true, silent = true}) 
-- Search by TODO lists
vim.api.nvim_set_keymap('n', '<C-T>', '<cmd> TodoTelescope<cr>', {noremap = true}) 


-- make < > shifts keep selection
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = false}) 
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = false}) 

vim.api.nvim_set_keymap('n', '<C-N>', '<cmd> NvimTreeToggle<cr>', {noremap = true}) 
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_follow = 1

-- Move to previous/next buffer in tabs
-- vim.api.nvim_set_keymap('n', '<A-.>' , ':BufferNext<cr>', {noremap = true, silent = true}) 
-- vim.api.nvim_set_keymap('n', '<A-,>', ':BufferPrevious<cr>', {noremap = true, silent = true}) 

-- vim.api.nvim_set_keymap('i', '<Tab>', '<cmd>lua require("completion").smart_tab()<cr>', { silent = true, noremap = false })
-- vim.api.nvim_set_keymap('i', '<S-Tab>', '<cmd>lua require("completion").smart_s_tab()<cr>', { silent = true, noremap = false })


-- vim.api.nvim_set_keymap('n', 'b]', '<cmd> BufferLineCycleNext<cr>', {silent = true, noremap = true}) 
-- vim.api.nvim_set_keymap('n', 'b[', '<cmd> BufferLineCyclePrev<cr>', {silent = true, noremap = true}) 

vim.opt.completeopt="menuone,noinsert,noselect"


-- Zoom on windows toggle
vim.api.nvim_set_keymap('n', '<space>o', '<cmd> TZFocus<cr>', {noremap = true}) 
