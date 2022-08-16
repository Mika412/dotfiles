-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

--     -- Theme
--     -- ------------------------------------------------------------------------------

     use {'dracula/vim', as = 'dracula'}
--     use {'pacokwon/onedarkhc.vim' }
--     use 'arcticicestudio/nord-vim'
    use 'sainnhe/sonokai'
--     use 'drewtempelmeyer/palenight.vim'
--     use 'joshdick/onedark.vim'

--     use 'tjdevries/colorbuddy.nvim'
--     use 'tjdevries/gruvbuddy.nvim'
    
     -- Autocomplete
     -- ------------------------------------------------------------------------------
     -- LSP Client
--     use 'neovim/nvim-lspconfig'
--     use 'glepnir/lspsaga.nvim'

     use 'hrsh7th/nvim-cmp'
     use 'hrsh7th/cmp-buffer'
     use 'hrsh7th/cmp-path'
	 use 'saadparwaiz1/cmp_luasnip'
     use 'hrsh7th/cmp-nvim-lsp'
     use 'hrsh7th/cmp-nvim-lua'

     -- LSP Snippets
     use 'L3MON4D3/LuaSnip'
     use 'rafamadriz/friendly-snippets'

     -- LSP 
     use 'neovim/nvim-lspconfig'
     use 'williamboman/nvim-lsp-installer'
     use 'jose-elias-alvarez/null-ls.nvim'
     use 'RRethy/vim-illuminate'


--     -- use 'tamago324/cmp-zsh'
--     use 'hrsh7th/cmp-vsnip'
--     use 'hrsh7th/vim-vsnip'


--     -- -- Function signature
--     use 'ray-x/lsp_signature.nvim'

--     -- -- Fancy icons
--     use 'onsails/lspkind-nvim'

--     -- Status bar
--     -- ------------------------------------------------------------------------------
--     -- use {'ap/vim-buftabline', as = 'buftabline'} -- show buffers in tabline
--     -- use 'romgrk/barbar.nvim'
--     use { 
--         'hoob3rt/lualine.nvim',
--         -- config = function()
--         --     require('plugins.configs.lualine')
--         -- end,
--     }

--     -- Tmux
--     -- ------------------------------------------------------------------------------

--     -- if executable('tmux')
	use 'christoomey/vim-tmux-navigator'
--     use 'tmux-plugins/vim-tmux-focus-events'
--     -- endif


--     -- Editing
--     -- ------------------------------------------------------------------------------

--     -- Comment out code
--     use 'b3nj5m1n/kommentary'
--     -- use 'terrortylor/nvim-comment'
		use 'numToStr/Comment.nvim'

--     -- Zoom in
--     use "Pocco81/TrueZen.nvim"

--     use 'sbdchd/neoformat'
--     -- Syntax Hihglighting
--     -- ------------------------------------------------------------------------------

--     --Global syntax highlighting
     use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

--     -- TODO highlighting
--     use {
--       "folke/todo-comments.nvim",
--       requires = "nvim-lua/plenary.nvim",
--     }
		use 'kyazdani42/nvim-web-devicons'
-- -- Lua
--     use {
--       "folke/trouble.nvim",
--       requires = "kyazdani42/nvim-web-devicons",
--       config = function()
--         require("trouble").setup {
--           -- your configuration comes here
--           -- or leave it empty to use the default settings
--           -- refer to the configuration section below
--         }
--       end
--     }
--     use{
--         "norcalli/nvim-colorizer.lua",
--         -- event = "BufRead",
--     }

     -- Finding and replacing
     -- ------------------------------------------------------------------------------
     use 'nvim-lua/plenary.nvim'
     use 'nvim-telescope/telescope.nvim'
--     use 'nvim-telescope/telescope-fzy-native.nvim'

--     -- File management
--     -- ------------------------------------------------------------------------------

     -- File browser
     use 'kyazdani42/nvim-tree.lua'

     -- General
     -- ------------------------------------------------------------------------------
     -- Greeter
--     use 'goolord/alpha-nvim'
--     -- Smooth scrolling
    use 'karb94/neoscroll.nvim'
--     -- Close pairs
     use 'windwp/nvim-autopairs'
--     -- Blankline
     use "lukas-reineke/indent-blankline.nvim"


--     -- Lazy loading plugins
     use 'lewis6991/impatient.nvim'


--   -- Simple plugins can be specified as strings
--   -- use '9mm/vim-closer'

--   -- Load on an autocommand event
--   -- use {'andymass/vim-matchup', event = 'VimEnter'}
		
    use 'lewis6991/gitsigns.nvim'
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
--   -- Use dependency and run lua function after load
--   -- use {
-- 	 --    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
--   --   config = function() require('gitsigns').setup() end
--   -- }
	
	if packer_bootstrap then
		require('packer').sync()
	end
end)
