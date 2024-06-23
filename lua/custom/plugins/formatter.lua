return {
	"nvimtools/none-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		'williamboman/mason.nvim',
	},
	opts = function()
		local nls = require("null-ls")
		return {
			sources = {
				nls.builtins.formatting.black.with({
					filetypes = {
						"python"
					},
				}),
				nls.builtins.formatting.sqlfluff.with({
					filetypes = { "sql" },
					extra_args = { "--dialect", "athena" },
				}),
				nls.builtins.diagnostics.sqlfluff.with({
					filetypes = { "sql" },
					extra_args = { "--dialect", "athena" },
				}),
			},
		}
	end,
}
