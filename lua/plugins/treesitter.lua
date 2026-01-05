return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	opts = {
		ensure_installed = { "bash", "lua", "c", "cpp", "vim", "vimdoc", "json", "markdown", "python" },
		highlight = { enable = true, additional_vim_regex_highlighting = false },
		indent = { enable = true },
		auto_install = true,
	},
}
