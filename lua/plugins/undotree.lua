return {
	"mbbill/undotree",

	-- Lazy-load when the command or key is used
	cmd = "UndotreeToggle",

	keys = {
		{ "<leader>u", vim.cmd.UndotreeToggle, desc = "Toggle UndoTree" },
	},

	config = function()
		-- Optional UI tweaks (safe defaults)
		vim.g.undotree_WindowLayout = 2 -- tree on the left, diff on the right
		vim.g.undotree_SplitWidth = 35
		vim.g.undotree_SetFocusWhenToggle = 1
	end,
}
