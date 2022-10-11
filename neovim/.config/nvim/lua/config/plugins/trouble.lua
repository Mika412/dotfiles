local status_ok, trouble = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end
trouble.setup({})
-- Trigger the trouble window
vim.keymap.set("n", "<space>fe", "<cmd>TroubleToggle<cr>", {silent = true, noremap = true})
