local M = {}

M.commands = {
	"gg=G  -- Auto-indent the entire file",
	":%s/old/new/gc  -- Find and replace with confirmation",
	":vsplit  -- Open a vertical split",
	":split  -- Open a horizontal split",
	":tabnew  -- Open a new tab",
	":q!  -- Quit without saving",
	"ZZ  -- Save and quit",
	":set nu  -- Show line numbers",
	":set rnu  -- Show relative line numbers",
	":noh  -- Remove search highlighting",
	"yyp  -- Duplicate the current line",
	"dd  -- Delete the current line",
	"u  -- Undo last change",
	"Ctrl-r  -- Redo last undo",
	"ciw  -- Change inner word",
	":r !ls  -- Insert the output of a shell command"
}

function M.suggest_command()
	local cmd = M.commands[math.random(#M.commands)]
	vim.api.nvim_echo({ { cmd, "None" } }, false, {})
end

function M.start_timer()
	local timer = vim.loop.new_timer()
	timer:start(0, 300000, vim.schedule_wrap(function()
		M.suggest_command()
	end))
end

function M.setup()
	-- Start the timer
	M.start_timer()

	vim.api.nvim_create_user_command(
		'SuggestCommand', -- the command name
		function()
			M.suggest_command()
		end,
		{ nargs = 0 }
	)
end

return M
