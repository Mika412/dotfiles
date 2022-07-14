local present, nvimtree = pcall(require, "nvim-tree")

if not present then
   return
end


nvimtree.setup {
    diagnostics = {
      enable = true,
      icons = {
         hint = "",
         info = "",
         warning = "",
         error = "",
      },
    },
    filters = {
      dotfiles = false,
    },
    disable_netrw = true,
    hijack_netrw = true,
    ignore_ft_on_setup = { "dashboard" },
    -- auto_close = false,
    open_on_tab = false,
    hijack_cursor = true,
    update_cwd = true,
    update_focused_file = {
      enable = true,
      update_cwd = false,
    },
    renderer = {
        highlight_opened_files = "all",
        root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" },
        highlight_git = true,
        indent_markers = {
          enable = true,
          icons = {
            corner = "└ ",
            edge = "│ ",
            none = "  ",
          },
        },
        icons = {
          webdev_colors = true,
          git_placement = "before",
        },
      },
    view = {
      side = "left",
      -- width = 30,
    },
    git = {
        enable = true,
        ignore = true,
    },
    filters = {
        custom = { ".git", "node_modules", ".cache", "__pycache__", ".vscode" }
    },
    actions = {
      open_file = {
        quit_on_open = false,
        window_picker = {
            enable = true,
            chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
            exclude = {
              filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame", },
              buftype  = { "nofile", "terminal", "help", },
            }
        }
    },
      -- width = 30,
   },
}
