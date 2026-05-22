require("rose-pine").setup({
	disable_background = true,
	variant = "main",
	styles = {
		italic = false,
	},
})

require("tokyonight").setup({
	style = "storm",
	transparent = true,
	terminal_colors = true,
	styles = {
		comments = { italic = false },
		keywords = { italic = false },
		sidebars = "dark",
		floats = "dark",
	},
})

require("solarized-osaka").setup({
	transparent = false,
	terminal_colors = true,
	styles = {
		comments = { italic = false },
		keywords = { italic = false },
		sidebars = "dark",
		floats = "dark",
	},
})

vim.cmd.colorscheme("rose-pine")

vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
