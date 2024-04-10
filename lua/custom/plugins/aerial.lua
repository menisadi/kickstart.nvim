return {
	'stevearc/aerial.nvim',
	opts = {
		filter_kind = {
			"Class",
			"Function",
			"Method",
		},
	},
	-- Optional dependencies
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons"
	},
}
