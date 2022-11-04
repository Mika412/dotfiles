-- local dracula = require("dracula")
-- dracula.setup({
--     -- show the '~' characters after the end of buffers
--     show_end_of_buffer = true, -- default false
--     transparent_bg = true, -- default false
--     lualine_bg_color = "#44475a", -- default nil
--     italic_comment = true, -- default false
-- })
local onedark = require("onedark")

onedark.setup({
  -- transparent = true,
  --   style = 'darker'
})
local colorscheme = "onedark"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
