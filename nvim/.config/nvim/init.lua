-- require('init')
require('settings')
require('plugins')
require('keymappings')

-- color scheme
vim.opt.background="dark"
-- vim.cmd 'colorscheme onedark'

require("onedark").setup({
  -- msgAreaStyle = "italic",
  -- hideInactiveStatusline = true,
  -- darkFloat = false,
  -- darkSidebar = false
})
-- vim.cmd 'colorscheme dracula'

