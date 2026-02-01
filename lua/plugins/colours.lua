return {
	{
		"LunarVim/lunar.nvim",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("lunar")
		end,
	},
	{
		name = "rose-pine",
		"rose-pine/neovim",
		lazy = true,
		config = function()
			require("rose-pine").setup({
				variant = "moon",

				--	disable_background = true,
				--	disable_float_background = true,
			})

			vim.cmd("colorscheme rose-pine-moon")
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end,
	},
	{
		"AlphaTechnolog/onedarker.nvim",
		lazy = true,
		config = function()
			vim.cmd("colorscheme onedarker")
			local n = vim.api.nvim_get_hl(0, { name = "Normal", link = false })

			vim.api.nvim_set_hl(0, "StatusLine", { fg = n.fg, bg = n.bg })
			vim.api.nvim_set_hl(0, "StatusLineNC", { fg = n.fg, bg = n.bg })
		end,
	},
}
