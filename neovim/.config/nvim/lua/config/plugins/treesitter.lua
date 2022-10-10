local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

treesitter.setup {
    auto_install = true,
    ensure_installed = {
        'bash',
        'c',
        'cmake',
        'cpp',
        'css',
        -- 'gitignore',
        'go',
        'html',
        'http',
        'java',
        'javascript',
        'typescript',
        'tsx',
        'json',
        'latex',
        'llvm',
        'lua',
        'make',
        'markdown',
        'markdown_inline',
        'proto',
        'python',
        'rust',
        'vim'
    }
}
