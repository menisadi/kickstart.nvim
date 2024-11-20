return {
	'stevearc/aerial.nvim',
	opts = {
		filter_kind = {
			"Class",
			"Function",
			"Method",
		},
		layout = {
			default_direction = "prefer_left",
		},
	},
	-- Optional dependencies
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons"
	},
}
