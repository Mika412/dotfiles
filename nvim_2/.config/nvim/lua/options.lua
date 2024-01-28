local options = {
   backup = false,                          -- creates a backup file
   swapfile = false,                        -- creates a swapfile
   clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
   -- cmdheight = 1,                           -- more space in the neovim command line for displaying messages
   -- completeopt = { "menuone", "noselect" }, -- mostly just for cmp
   -- conceallevel = 0,                        -- so that `` is visible in markdown files
   -- -- colorcolumn = "80",
   -- -- colorcolumn = "120",
   -- fileencoding = "utf-8",                  -- the encoding written to a file
   hlsearch = true,                         -- highlight all matches on previous search pattern
   ignorecase = true,                       -- ignore case in search patterns
   mouse = "a",                                -- allow the mouse to be used in neovim (necessary for TMUX)
   -- pumheight = 10,                          -- pop up menu height
   showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
   -- showtabline = 0,                         -- always show tabs
   smartcase = true,                       	-- smart case
   smartindent = true,                     	-- make indenting smarter again
   splitbelow = true,                      	-- force all horizontal splits to go below current window
   splitright = true,                      	-- force all vertical splits to go to the right of current window
   termguicolors = true,                   	-- set term gui colors (most terminals support this)
   timeoutlen = 1000,                       	-- time to wait for a mapped sequence to complete (in milliseconds)
   undofile = true,                         -- enable persistent undo
   updatetime = 300,                        -- faster completion (4000ms default)
   writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
   expandtab = true,                        -- convert tabs to spaces
   tabstop = 4,                             -- insert 2 spaces for a tab
   shiftwidth = 4,                          -- the number of spaces inserted for each indentation
   cursorline = true,                       -- highlight the current line
   number = true,                           -- set numbered lines
   relativenumber = true,                   -- set relative numbered lines
   laststatus = 3,                          -- enable global statusline
   showcmd = false,
   ruler = false,			       -- Show col and line position in the statusbar
   numberwidth = 4,                         -- set number column width to 2 {default 4}
   signcolumn = "yes",                      	-- always show the sign column, otherwise it would shift the text each time
   wrap = false,                            -- display lines as one long line
   synmaxcol=500, 							-- Stop vim trying to syntax highlight long lines
   -- scrolloff = 8,                           -- is one of my fav
   -- sidescrolloff = 8,
   errorbells = false,				-- Disable error bells
   background = "dark",				-- Disable error bells
   -- guifont = "monospace:h17",               -- the font used in graphical neovim applications
   winbar = "%f" 					-- enable buffer filename
}


for k, v in pairs(options) do
  vim.opt[k] = v
end
