local present, lualine = pcall(require, "lualine")

if not present then
   return
end

lualine.setup({
    options = {
        icons_enabled = true,
        theme = 'sonokai',
        -- theme = 'onedark',
        -- theme = 'palenight',
        -- theme = 'onedark',
        section_separators = { left = '', right = ''},
        component_separators = {left = '', right = ''},
        -- section_separators = { left = '', right = ''},
        -- component_separators = { left = '', right = ''},
        disabled_filetypes = {}
      },
    sections = {
        lualine_a = {'mode'},
        -- lualine_b = {{"branch", icon = ""}},
        lualine_b = {{"branch", icon = ""}},
        lualine_c = {{"filename", file_status = true}},
        -- lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_x = {
            { 'diagnostics', sources = {"nvim_lsp"}, symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '} },
          'encoding',
          'filetype'
        },
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
  tabline = {},
  extensions = {"quickfix", "fugitive", "nvim-tree"}
})