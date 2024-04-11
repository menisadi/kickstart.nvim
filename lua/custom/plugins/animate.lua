return {
	'echasnovski/mini.animate',
	version = '*',
	cond = function()
		return not vim.g.neovide
	end,
	opts = {},
}
