-- -- Load plugins for specific filetypes
-- vim.cmd 'syntax on'
-- vim.cmd 'filetype plugin on'

-- -- Set <space> to leader
-- vim.mapleader = " "
-- -- vim.maplocalleader = '\\'

-- -- -- Use ``indent`` based folding
-- -- vim.opt.foldmethod="indent"

-- -- Disable all folds on file open until `zc` or `zM` etc is used
-- vim.opt.foldenable = false

-- -- With :vim.opt.hidden, opening a new file when the current buffer has unsaved
-- -- changes causes files to be hidden instead of closed
-- vim.opt.hidden = true


-- -- Don't show the intro message when starting Vim
-- -- Also suppress several 'Press Enter to continue messages' especially
-- -- with FZF
-- vim.opt.shortmess:append("aoOtIWcFs")

-- -- Hide special characters
-- vim.opt.list = false

-- -- Show the (partial) command as it’s being typed
-- vim.opt.showcmd = true



-- -- Indent using four spaces.
-- vim.opt.softtabstop=4

-- -- Smoother scrollin- when moving horizontally
-- vim.opt.sidescroll=1

-- -- Use spaces, not tabs
-- vim.opt.expandtab = true

-- -- Prevent autocomplete options opening in scratchpad
-- --vim.opt.completeopt-=preview

-- -- Keep the cursor in the same place when switching buffers
-- vim.opt.startofline = false

-- -- Add the g flag to search/replace by default
-- vim.opt.gdefault = true

-- -- vim.opt.undodir=~/.config/nvim/undo

-- -- centralize backups, swapfiles and undo history
-- vim.opt.directory=".,$temp" -- stop the swp file warning

-- -- respect modeline in files
-- vim.opt.modeline = true
-- vim.opt.modelines=4

-- -- show “invisible” characters
-- vim.opt.lcs="tab:▸\\ ,trail:·,nbsp:_"
-- vim.opt.list = true


-- -- vim.opt.winbar = "%=%m\ %f"

-- -- hide the warning message on lsp server
-- -- vim.lsp.handlers["textdocument/publishdiagnostics"] = vim.lsp.with(
-- --     vim.lsp.diagnostic.on_publish_diagnostics, {
-- --         -- disable virtual text
-- --         virtual_text = false,

-- --         -- show signs
-- --         signs = true,

-- --         -- delay update diagnostics
-- --         update_in_insert = false,
-- --     }
-- -- )


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
   -- expandtab = true,                        -- convert tabs to spaces
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
