return {
	"mbbill/undotree",

	-- Lazy-load
	cmd = "UndotreeToggle",

	config = function()
		-- Defaults
		vim.g.undotree_WindowLayout = 3 -- tree on the right
		vim.g.undotree_SplitWidth = 35
		vim.g.undotree_SetFocusWhenToggle = 1
	end,
}
