local dracula = require("dracula")
dracula.setup({
  -- show the '~' characters after the end of buffers
  show_end_of_buffer = true, -- default false 
  transparent_bg = true, -- default false
  italic_comment = true, -- default false
})

vim.cmd[[colorscheme dracula]]

-- Sonokai Theme
-- vim.g.sonokai_style = 'andromeda'
-- local colorscheme = "sonokai"

-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

-- if not status_ok then
-- 	vim.notify("colorscheme " .. colorscheme .. " not found!")
-- 	return
-- end
