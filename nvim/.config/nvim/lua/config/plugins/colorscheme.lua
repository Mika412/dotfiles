local dracula = require("dracula")
dracula.setup({
  -- show the '~' characters after the end of buffers
  show_end_of_buffer = true, -- default false 
  transparent_bg = true, -- default false
  italic_comment = true, -- default false
})

vim.cmd[[colorscheme dracula]]
