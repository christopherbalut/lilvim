return {
	{
		name = "rose-pine",
		"rose-pine/neovim",
		lazy = false,
		config = function()
			require("rose-pine").setup({
				-- variant = "moon",
				disable_background = true,
				-- disable_float_background = true,
				styles = {
					italic = false,
				},
			})

			vim.cmd("colorscheme rose-pine")

			vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
		end,
	},
	{
		"LunarVim/lunar.nvim",
		lazy = true,
		config = function()
			vim.cmd.colorscheme("lunar")
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
