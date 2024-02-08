return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	dependencies = { "rafamadriz/friendly-snippets" },
	-- Load snippets from path
	require("luasnip.loaders.from_vscode").load({ paths = "~/.config/nvim/lua/custom/snippets" })
}
