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

-- require "lsp_signature".setup()

require('kommentary.config').configure_language("default", {
    prefer_single_line_comments = true,
})

require('nvim-autopairs').setup({
    disable_filetype = { "TelescopePrompt", "vim" },
})
