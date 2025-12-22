return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",

		-- fzf native (optional but recommended)
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},

		-- ui-select
		"nvim-telescope/telescope-ui-select.nvim",
	},

	-- ✅ Telescope keymaps live here
	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Find files",
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Live grep",
		},
		{
			"<leader>fb",
			function()
				require("telescope.builtin").buffers()
			end,
			desc = "Buffers",
		},
		{
			"<leader>fh",
			function()
				require("telescope.builtin").help_tags()
			end,
			desc = "Help tags",
		},
		{
			"<C-p>",
			function()
				require("telescope.builtin").git_files()
			end,
			desc = "Git files",
		},
		{
			"<leader>fs",
			function()
				local builtin = require("telescope.builtin")
				builtin.grep_string({ search = vim.fn.input("Grep > ") })
			end,
			desc = "Find string",
		},
	},

	config = function()
		local telescope = require("telescope")
		local themes = require("telescope.themes")

		telescope.setup({
			extensions = {
				["ui-select"] = {
					themes.get_dropdown({
						previewer = false,
						initial_mode = "normal",
					}),
				},
			},
		})

		telescope.load_extension("fzf")
		telescope.load_extension("ui-select")
	end,
}
