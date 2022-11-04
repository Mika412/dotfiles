local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end
nvim_tree.setup({
    renderer = {
        highlight_opened_files = "all",
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
            show = {
                git = true,
                folder = true,
                file = true,
                folder_arrow = false,
            },
            glyphs = {
                default = '',
                git = {
                    unstaged = '~',
                    staged = '+',
                    unmerged = '!',
                    renamed = '≈',
                    untracked = '?',
                    deleted = '-',
                },
            },
        },
    },
    diagnostics = {
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    update_cwd = true,
    hijack_cursor = true,
    update_focused_file = {
        enable = true,
    },
    view = {
        width = 35,
    },
    git = {
        ignore = false,
    },
    actions = {
        open_file = {
            window_picker = {
                enable = false,
            },
        },
    },
    filters = {
        custom = { '.git$', 'node_modules$', '^target$', '__pycache__$', ".cache$", ".vscode$" }
    },
})

