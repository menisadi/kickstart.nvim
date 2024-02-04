return {
	"jose-elias-alvarez/null-ls.nvim",
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
			},
		}
	end,
}