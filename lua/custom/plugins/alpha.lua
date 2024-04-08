return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require 'alpha'
		local dashboard = require 'alpha.themes.dashboard'
		dashboard.section.header.val = { " Hi there " }
		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("SPC w o", " Root folder", "<CMD>Oil ~ <CR>"),
			dashboard.button("SPC s f", "󰐱 Fuzzy find file",
				require('telescope.builtin').find_files),
			dashboard.button("SPC s z", " Zoxide list",
				require('telescope').extensions.zoxide.list),
			dashboard.button("SPC ?", "󰋚 Recently opened files",
				require('telescope.builtin').oldfiles),
			dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
		}
		dashboard.config.opts.noautocmd = true
		-- vim.cmd [[autocmd User AlphaReady echo 'ready']]

		alpha.setup(dashboard.config)
	end
};
