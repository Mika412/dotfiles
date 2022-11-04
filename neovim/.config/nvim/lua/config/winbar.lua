local M = {}

vim.api.nvim_set_hl(0, 'WinBarModified', { fg = vim.g.terminal_color_4 })

function M.eval()
    local file_path = vim.api.nvim_eval_statusline('%f', {}).str
    local modified = vim.api.nvim_eval_statusline('%M', {}).str

    return file_path
        .. ' %*'
        .. '%#WinBarModified#'
        .. modified
        .. '%*'
end

return M
