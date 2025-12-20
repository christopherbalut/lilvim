return {
	"tpope/vim-fugitive",
	cmd = { "Git", "Gdiffsplit", "Gvdiffsplit", "Gedit", "Gblame" },

	keys = {
		{ "<leader>gs", "<cmd>Git<CR>", desc = "Git status" },
	},
}
