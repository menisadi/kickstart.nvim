return {
	'stevearc/aerial.nvim',
	opts = {},
	-- Optional dependencies
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		local aerial = require "aerial"
		vim.keymap.set("n", "<leader>co", aerial.toggle, { desc = "Toggle Aerial pane" })
	end
}
