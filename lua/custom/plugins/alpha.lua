return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require 'alpha'
		local dashboard = require 'alpha.themes.dashboard'
		dashboard.section.header.val = { " Hi there " }
		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("SPACE w o", " Open code folder", ":ene /usr/code <CR>"),
			dashboard.button("SPACE s z", " Open zoxide", "Telescode zoxide list <CR>"),
			dashboard.button("SPACE s f", " Fuzzy find file", ":Telescode find_files <CR>"),
			dashboard.button("SPACE ?", " Recently opened files", "Telescode oldfiles <CR>"),
			dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
		}
		dashboard.config.opts.noautocmd = true
		-- vim.cmd [[autocmd User AlphaReady echo 'ready']]

		alpha.setup(dashboard.config)
	end
};
