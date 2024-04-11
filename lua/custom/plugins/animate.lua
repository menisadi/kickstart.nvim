return {
	'echasnovski/mini.animate',
	version = '*',
	cond = function()
		if vim.g.neovide then
			return false
		end
	end,
	opts = {},
}
