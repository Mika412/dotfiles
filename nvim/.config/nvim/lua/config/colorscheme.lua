vim.g.sonokai_style = 'andromeda'
local colorscheme = "sonokai"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  -- vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

-- vim.g.sonokai_style = 'atlantis'
-- vim.g.tokyonight_style == "day"
-- vim.cmd 'colorscheme onedarkhc'

-- require("onedark").setup({
--   -- msgAreaStyle = "italic",
--   -- hideInactiveStatusline = true,
--   -- darkFloat = false,
--   -- darkSidebar = false
-- })
-- vim.cmd 'colorscheme dracula'


