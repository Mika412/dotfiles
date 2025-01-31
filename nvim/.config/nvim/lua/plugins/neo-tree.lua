--     {
--   "nvim-tree/nvim-tree.lua",
--   version = "*",
--   lazy = false,
--   dependencies = {
--     "nvim-tree/nvim-web-devicons",
--   },
--   config = function()
--     require("nvim-tree").setup({
--       sort = {
--         sorter = "case_sensitive",
--       },
--       view = {
--         width = 30,
--       },
--       renderer = {
--         group_empty = true,
--       },
--       filters = {
--         dotfiles = false,
--       },
--     })
--     vim.keymap.set("n", "<C-n>", ":NvimTreeFindFileToggle<CR>", {})
--   end,
-- }
--     {
--   "nvim-tree/nvim-tree.lua",
--   version = "*",
--   lazy = false,
--   dependencies = {
--     "nvim-tree/nvim-web-devicons",
--   },
--   config = function()
--     require("nvim-tree").setup({
--       sort = {
--         sorter = "case_sensitive",
--       },
--       view = {
--         width = 30,
--       },
--       renderer = {
--         group_empty = true,
--       },
--       filters = {
--         dotfiles = false,
--       },
--     })
--     vim.keymap.set("n", "<C-n>", ":NvimTreeFindFileToggle<CR>", {})
--   end,
-- }
--     {
--   "nvim-tree/nvim-tree.lua",
--   version = "*",
--   lazy = false,
--   dependencies = {
--     "nvim-tree/nvim-web-devicons",
--   },
--   config = function()
--     require("nvim-tree").setup({
--       sort = {
--         sorter = "case_sensitive",
--       },
--       view = {
--         width = 30,
--       },
--       renderer = {
--         group_empty = true,
--       },
--       filters = {
--         dotfiles = false,
--       },
--     })
--     vim.keymap.set("n", "<C-n>", ":NvimTreeFindFileToggle<CR>", {})
--   end,
-- }
--     {
--   "nvim-tree/nvim-tree.lua",
--   version = "*",
--   lazy = false,
--   dependencies = {
--     "nvim-tree/nvim-web-devicons",
--   },
--   config = function()
--     require("nvim-tree").setup({
--       sort = {
--         sorter = "case_sensitive",
--       },
--       view = {
--         width = 30,
--       },
--       renderer = {
--         group_empty = true,
--       },
--       filters = {
--         dotfiles = false,
--       },
--     })
--     vim.keymap.set("n", "<C-n>", ":NvimTreeFindFileToggle<CR>", {})
--   end,
-- }
return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = false,
			},
		})
		vim.keymap.set("n", "<C-n>", ":NvimTreeFindFileToggle<CR>", {})
	end,
}
-- {
-- 	"nvim-neo-tree/neo-tree.nvim",
-- 	branch = "v3.x",
-- 	dependencies = {
-- 		"nvim-lua/plenary.nvim",
-- 		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
-- 		"MunifTanjim/nui.nvim",
-- 		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
-- 	},
--
-- 	config = function()
-- 		require("neo-tree").setup({
--
-- 			enable_git_status = true,
-- 			enable_diagnostics = true,
-- 			filesystem = {
-- 				follow_current_file = {
-- 					enabled = false, -- This will find and focus the file in the active buffer every time
-- 					--               -- the current file is changed while the tree is open.
-- 					leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
-- 				},
-- 			},
-- 		})
-- 		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
-- 		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
-- 	end,
-- }
