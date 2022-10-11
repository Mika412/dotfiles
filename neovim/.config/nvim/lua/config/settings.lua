-- local g = vim.g
-- local o = vim.o


--.timeoutlen = 500
--.updatetime = 200
--
--.scrolloff = 8
--
--.numberwidth = 5
--.relativenumber = true
--.signcolumn = 'yes:2'
--
--.expandtab = true
--.cindent = true
--.textwidth = 300
--.tabstop = 4
--.shiftwidth = 0
--.softtabstop = -1 -- If negative, shiftwidth value is used
--.list = true
--.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'
--
--.ignorecase = true
--.smartcase = true
--
--.history = 50
--
--.splitright = true
--.splitbelow = true
--
--.jumpoptions = 'view'
--
--.mapleader = ' '
--.maplocalleader = ' '

local options = {
	termguicolors = true,                    -- set term gui colors (most terminals support this)
	clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
	number = true,                           -- set numbered lines
	relativenumber = true,                   -- set relative numbered lines
	cursorline = true,                       -- highlight the current line
	mouse = "a",                             -- allow the mouse to be used in neovim (necessary for TMUX)
	undofile = true,                         -- enable persistent undo
	backup = false,                          -- creates a backup file
	writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	swapfile = false,                        -- creates a swapfile
	wrap = true,                             -- wrap long lines
	laststatus = 3,                          -- enable global statusline
	winbar = "%{%v:lua.require('config.plugins.winbar').eval()%}", -- enable buffer filename
	splitright = true,			 -- When splitting, split always to the right
	splitbelow = true,			 -- When splitting, split always to the right
	expandtab = true,                        -- convert tabs to spaces
	tabstop = 4,                             -- insert 2 spaces for a tab
	shiftwidth = 4,                          -- the number of spaces inserted for each indentation
    timeoutlen = 200,
}

for key, value in pairs(options) do
	vim.opt[key] = value
end
