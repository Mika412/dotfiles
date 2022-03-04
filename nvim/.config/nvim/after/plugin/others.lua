-- require'impatient'
-- require'impatient'.setup()
-- require("indent_blankline").setup {
--     -- char = "▏",
--     -- filetype_exclude = { "help", "terminal", "dashboard", "packer" },
--     -- buftype_exclude = { "terminal" },
--     -- show_trailing_blankline_indent = false,
--     -- show_first_indent_level = false,
--     -- space_char_blankline = "⋅",
--     -- show_end_of_line = true,
-- }
--


-- require("colorbuddy").colorscheme "gruvbuddy"

require('colorizer').setup({ "*" }, {
    RGB = true, -- #RGB hex codes
    RRGGBB = true, -- #RRGGBB hex codes
    names = false, -- "Name" codes like Blue
    RRGGBBAA = false, -- #RRGGBBAA hex codes
    rgb_fn = false, -- CSS rgb() and rgba() functions
    hsl_fn = false, -- CSS hsl() and hsla() functions
    css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
    css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn

    -- Available modes: foreground, background
    mode = "background", -- Set the display mode.
})

vim.cmd "ColorizerAttachToBuffer"

require "lsp_signature".setup({
    hint_enable = true,
    hint_prefix = ""
})

require('kommentary.config').configure_language("default", {
    prefer_single_line_comments = true,
})

require('nvim-autopairs').setup({
    disable_filetype = { "TelescopePrompt", "vim" },
})

require('todo-comments').setup({
    keywords = {
        DONE = { icon = " ", color = "hint" }
    }
})

require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}

local saga = require 'lspsaga'

saga.init_lsp_saga()

-- Indent blankline
vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")
require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

-- require('nvim-tree').setup{
--     -- -- disables netrw completely
--     -- disable_netrw       = true,
--     -- -- hijack netrw window on startup
--     -- hijack_netrw        = true,
--     -- -- open the tree when running this setup function
--     -- open_on_setup       = false,
--     -- -- will not open on setup if the filetype is in this list
--     -- ignore_ft_on_setup  = {},
--     -- -- closes neovim automatically when the tree is the last **WINDOW** in the view
--     -- auto_close          = false,
--     -- -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
--     -- open_on_tab         = false,
--     -- -- hijacks new directory buffers when they are opened.
--     -- update_to_buf_dir   = {
--     --     -- enable the feature
--     --     enable = true,
--     --     -- allow to open the tree if it was previously closed
--     --     auto_open = true,
--     -- },
--     -- -- hijack the cursor in the tree to put it at the start of the filename
--     -- hijack_cursor       = false,
--     -- -- updates the root directory of the tree on `DirChanged` (when you run `:cd` usually)
--     -- update_cwd          = false,
--     -- -- show lsp diagnostics in the signcolumn
--     -- diagnostics = {
--     --     enable = false,
--     --     icons = {
--     --         hint = "",
--     --         info = "",
--     --         warning = "",
--     --         error = "",
--     --     }
--     -- },
--     -- -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
--     -- update_focused_file = {
--     --     -- enables the feature
--     --     enable      = true,
--     --     -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
--     --     -- only relevant when `update_focused_file.enable` is true
--     --     update_cwd  = false,
--     --     -- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
--     --     -- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
--     --     ignore_list = {}
--     -- },
--     -- -- configuration options for the system open command (`s` in the tree by default)
--     -- system_open = {
--     --     -- the command to run this, leaving nil should work in most cases
--     --     cmd  = nil,
--     --     -- the command arguments as a list
--     --     args = {}
--     -- },

--     -- view = {
--     --     -- width of the window, can be either a number (columns) or a string in `%`, for left or right side placement
--     --     width = 30,
--     --     -- height of the window, can be either a number (columns) or a string in `%`, for top or bottom side placement
--     --     height = 30,
--     --     -- Hide the root path of the current folder on top of the tree 
--     --     hide_root_folder = false,
--     --     -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
--     --     side = 'left',
--     --     -- if true the tree will resize itself after opening a file
--     --     auto_resize = false,
--     --     mappings = {
--     --         -- custom only false will merge the list with the default mappings
--     --         -- if true, it will only use your list to set the mappings
--     --         custom_only = false,
--     --         -- list of mappings to set on the tree manually
--     --         list = {}
--     --     }
--     -- }
-- }
