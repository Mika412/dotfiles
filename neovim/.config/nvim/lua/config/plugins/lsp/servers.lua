local mason_present, mason = pcall(require, "mason")
local mason_conf_present, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_present or not mason_conf_present then
	return
end

servers = {
	"sumneko_lua",
	"pylsp"
}
mason.setup()
mason_lspconfig.setup({
	ensure_installed = servers,
	automatic_installation = true,
})


local present, lspconfig = pcall(require, "lspconfig")

if not present then
   return
end

vim.lsp.set_log_level(vim.lsp.log_levels.OFF)

local M = require('config.plugins.lsp.handlers')

print("I'm registering this")

for _, server in pairs(servers) do
	print(server)
	local opts = {
        flags = M.flags,
        capabilities = M.capabilities,
		on_attach = M.on_attach
	}
    if server == "sumneko_lua" then
        local sumneko_opts = require "config.plugins.lsp.settings.sumneko_lua"
        opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
    end
    if server == "pylsp" then
        local pylsp_opts = require("config.plugins.lsp.settings.pylsp")
        opts = vim.tbl_deep_extend("force", pylsp_opts, opts)
    end

    lspconfig[server].setup(opts)
end


