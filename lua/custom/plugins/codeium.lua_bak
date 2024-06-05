return {
	"Exafunction/codeium.vim",
	event = "BufEnter",
	config = function()
		vim.g.codeium_manual = true
		-- Insert suggestion
		vim.keymap.set("i", "<C-g>", function() return vim.fn["codeium#Accept"]() end,
			{ expr = true, silent = true, desc = "Accept Codeium suggestion" })
		-- Cycle completions (next)
		vim.keymap.set(
			"i",
			"<c-l>",
			function() return vim.fn["codeium#CycleCompletions"](1) end,
			{ expr = true, silent = true, desc = "Cycle through Codeium suggestions" }
		)
		-- Cycle completions (prev)
		vim.keymap.set(
			"i",
			"<c-h>",
			function() return vim.fn["codeium#CycleCompletions"](-1) end,
			{ expr = true, silent = true, desc = "Cycle backward through Codeium suggestions" }
		)
		-- Clear suggestion
		vim.keymap.set("i", "<c-x>", function() return vim.fn["codeium#Clear"]() end,
			{ expr = true, silent = true, desc = "Clear Codeium suggestions" })

		-- Complete suggestion
		vim.keymap.set("i", "<C-t>", function() return vim.fn["codeium#Complete"]() end,
			{ expr = true, silent = true, desc = "Complete Codeium suggestion" })
	end,
}
