local M = {}

function M.setup()
	local statusline = {
		" %t", -- filename tail
		"%r", -- [RO] if readonly
		"%m", -- + if modified
		"%=", -- split left/right
		"%{&filetype}", -- filetype
		" %2p%%", -- percent through file
		" %3l:%-2c:%L ", -- line:col:totalline
	}

	vim.o.statusline = table.concat(statusline, "")
	vim.o.laststatus = 3 -- optional: always show statusline
end

return M
