vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

local present, blankline = pcall(require, "indent_blankline")

if not present then
    return
end


blankline.setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
    filetype_exclude = { 'help', 'packer', 'FTerm' },
    buftype_exclude = { 'terminal', 'nofile' },
}
