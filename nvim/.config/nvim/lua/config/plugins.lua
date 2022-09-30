local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

        ----------------------
        -- Required plugins --
        ----------------------

        use('nvim-lua/plenary.nvim')
  
  ----------------------------------------
  -- Theme, Icons, Statusbar, Bufferbar --
  ----------------------------------------
  use ({
	  'kyazdani42/nvim-web-devicons',
	  config = function()
		require('nvim-web-devicons').setup()
	  end,
	})

  use ({
	  'Mofiqul/dracula.nvim',
	  config = function()
		require('config.plugins.colorscheme')
	  end,
	})

        -----------------------------------
        -- Treesitter: Better Highlights --
        -----------------------------------

        use({
                'nvim-treesitter/nvim-treesitter',
                event = 'CursorHold',
                run = ':TSUpdate',
                config = function()
                    require('config.plugins.treesitter')
                end,
            -- { 'nvim-treesitter/playground', after = 'nvim-treesitter' },
            -- { 'nvim-treesitter/nvim-treesitter-textobjects', after = 'nvim-treesitter' },
            -- { 'nvim-treesitter/nvim-treesitter-refactor', after = 'nvim-treesitter' },
            -- { 'windwp/nvim-ts-autotag', after = 'nvim-treesitter' },
            -- { 'JoosepAlviste/nvim-ts-context-commentstring', after = 'nvim-treesitter' },
        })

        --------------------------
        -- Editor UI Niceties --
        --------------------------

	-- Blankline
        use({
            'lukas-reineke/indent-blankline.nvim',
            event = 'BufRead',
	after = 'nvim-treesitter',
            config = function()
                require('config.plugins.blankline')
            end,
        })        
		
	-- Show colour of the hex/rgb values
	use({
            'norcalli/nvim-colorizer.lua',
            event = 'CursorHold',
            config = function()
                require('colorizer').setup()
            end,
        })


	---------------------------------
	-- Navigation and Fuzzy Search --
	---------------------------------
     -- File browser
  use ({
	'kyazdani42/nvim-tree.lua',
	  config = function()
		  event = 'CursorHold',
		require('config.plugins.nvim-tree')
	  end,
	})
     -- Smooth scrolling
	 use({
            'karb94/neoscroll.nvim',
            event = 'WinScrolled',
            config = function()
                require('neoscroll').setup({ hide_cursor = false })
            end,
        })

        -------------------------
        -- Editing to the MOON --
        -------------------------
	-- use({
 --            'tpope/vim-surround',
 --            event = 'BufRead',
 --            requires = {
 --                {
 --                    'tpope/vim-repeat',
 --                    event = 'BufRead',
 --                },
 --            },
 --        })
        -- use({
        --     'AndrewRadev/splitjoin.vim',
        --     -- NOTE: splitjoin won't work with `BufRead` event
        --     event = 'CursorHold',
        -- })
	  use ({
	  'numToStr/Comment.nvim',
	  config = function()
		require('config.plugins.comment')
	  end,
	})
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
