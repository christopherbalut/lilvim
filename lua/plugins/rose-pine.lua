return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			variant = "moon",

			disable_background = true,
			disable_float_background = true,
		})

		vim.cmd("colorscheme rose-pine-moon")
	end,
}
