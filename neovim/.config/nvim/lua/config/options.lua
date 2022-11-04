-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

local options = {
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  number = true,                           -- set numbered lines
  relativenumber = true,                  -- set relative numbered lines
  cursorline = true,                       -- highlight the current line
  mouse = "a",                             -- allow the mouse to be used in neovim
  undofile = true,                         -- enable persistent undo
  backup = false,                          -- creates a backup file
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  swapfile = false,                        -- creates a swapfile
  wrap = true,                            -- display lines as one long line
  laststatus = 3,                          -- enable global statusline
  winbar = "%{%v:lua.require('config.winbar').eval()%}", -- enable buffer filename
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  expandtab = true,                        -- convert tabs to spaces
  tabstop = 4,                             -- insert 2 spaces for a tab
  shiftwidth = 4,                          -- the number of spaces inserted for each indentation
  timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time

  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  updatetime = 300,                        -- faster completion (4000ms default)
  numberwidth = 4,                         -- set number column width to 2 {default 4}

  linebreak = true,                        -- companion to wrap, don't split words
  scrolloff = 8,                           -- minimal number of screen lines to keep above and below the cursor
  sidescrolloff = 8,                       -- minimal number of screen columns either side of cursor if wrap is `false`
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
