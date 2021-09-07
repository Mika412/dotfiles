-- Load plugins for specific filetypes
vim.cmd 'syntax on'
vim.cmd 'filetype plugin on'

-- Enable term 24 bit colour
vim.opt.termguicolors = true

-- Set <space> to leader
vim.mapleader = " "
-- vim.maplocalleader = '\\'

-- Enable mouse with tmux
vim.opt.mouse = 'a'

-- -- Make it obvious where 80 characters is
-- vim.opt.textwidth=80

-- -- Use ``indent`` based folding
-- vim.opt.foldmethod="indent"

-- Disable all folds on file open until `zc` or `zM` etc is used
vim.opt.foldenable = false

-- With :vim.opt.hidden, opening a new file when the current buffer has unsaved
-- changes causes files to be hidden instead of closed
vim.opt.hidden = true


-- Turn off swapfiles
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.backup = false

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Show col and line position in the statusbar
vim.opt.ruler = true

-- Don't show the intro message when starting Vim
-- Also suppress several 'Press Enter to continue messages' especially
-- with FZF
vim.opt.shortmess:append("aoOtIWcFs")

-- Hide special characters
vim.opt.list = false

-- Copy/paste to clipboard
vim.opt.clipboard:append("unnamedplus")

-- Show the (partial) command as it’s being typed
vim.opt.showcmd = true

-- Disable error bells
vim.opt.errorbells = false

-- Don't display the current mode (Insert, Visual, Replace)
-- in the status line. This info is already shown in the
-- Airline status bar.
vim.opt.showmode = false

-- Stop vim trying to syntax highlight long lines, typically found in minified
-- files. This greatly reduces lag yet is still wide enough for large displays
vim.opt.synmaxcol=500

-- Highlight current line
vim.opt.cursorline = true

-- Indent using four spaces.
vim.opt.softtabstop=4
vim.opt.tabstop=4
vim.opt.shiftwidth=4

-- Smoother scrollin- when moving horizontally
vim.opt.sidescroll=1

-- Use spaces, not tabs
vim.opt.expandtab = true

-- Prevent autocomplete options opening in scratchpad
--vim.opt.completeopt-=preview

-- Don't wrap lines
vim.opt.wrap = false

-- Keep the cursor in the same place when switching buffers
vim.opt.startofline = false


-- Open new split panes to right and bottom, which feels more natural
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Ignore case of searches
vim.opt.ignorecase = true

-- If a pattern contains an uppercase letter
-- it is case sensitive, otherwise, it is not
vim.opt.smartcase = true

-- Eliminate delay when switching modes
vim.opt.ttimeoutlen=0

-- Add the g flag to search/replace by default
vim.opt.gdefault = true

-- vim.opt.undodir=~/.config/nvim/undo
vim.opt.undofile = true
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000

-- Centralize backups, swapfiles and undo history
vim.opt.directory=".,$TEMP" -- Stop the swp file warning

-- Respect modeline in files
vim.opt.modeline = true
vim.opt.modelines=4

-- Show “invisible” characters
vim.opt.lcs="tab:▸\\ ,trail:·,nbsp:_"
vim.opt.list = true


