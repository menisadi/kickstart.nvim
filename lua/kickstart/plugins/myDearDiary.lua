-- my_dear_diary.lua
local M = {}

function M.add_daily_entry()
	local today = os.date("%Y-%m-%d")
	local entry = "\n### " .. today .. "\n\n"
	vim.api.nvim_put({ entry }, '', true, true)
end

function M.add_weekly_entry()
	local today = os.date("%Y-%m-%d")
	local week_start = os.date("%Y-%m-%d", os.time() - (os.date("%w") - 1) * 24 * 60 * 60)
	local entry = "\n## Week " .. os.date("%U", week_start) .. ": " .. week_start .. " - " .. today .. "\n\n"
	vim.api.nvim_put({ entry }, '', true, true)
end

function M.set_diary_status()
	vim.wo.statusline = vim.wo.statusline .. '%#ErrorMsg#' .. (vim.bo.filetype == 'markdown' and '📖' or '') .. '%*'
end

return M
