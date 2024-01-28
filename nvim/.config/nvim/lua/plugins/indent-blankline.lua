-- vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")
-- vim.cmd [[highlight IndentBlanklineIndent guifg=#E06C75 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent guifg=#E5C07B gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent guifg=#98C379 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent guifg=#56B6C2 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent guifg=#61AFEF gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent guifg=#C678DD gui=nocombine]]

return {
	"lukas-reineke/indent-blankline.nvim",
	config = function()
		require("ibl").setup({
			-- indent = { highlight = highlight, char = " " },
			-- scope = { enabled = true },
			-- space_char_blankline = " ",
			-- show_current_context = true,
			-- show_current_context_start = true,
			-- context_highlight_list = {
			-- 	"IndentBlanklineIndent",
			-- },
		})
	end,
}
