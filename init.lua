require("config.vim-options")
require("config.keymaps")
require("config.autocmds")

vim.pack.add({
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/nvim-telescope/telescope.nvim",
	"https://github.com/mbbill/undotree",
	{ src = "https://github.com/ThePrimeagen/harpoon", version = "harpoon2" },
	"https://github.com/tpope/vim-fugitive",
	"https://github.com/rose-pine/neovim",
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/Saghen/blink.cmp", version = vim.version.range("1.0") },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	"https://github.com/windwp/nvim-autopairs",
	"https://github.com/folke/tokyonight.nvim",
	"https://github.com/craftzdog/solarized-osaka.nvim",
})

require("plugins.treesitter")
require("plugins.telescope")
require("plugins.undotree")
require("plugins.harpoon")
require("plugins.colours")
require("plugins.vim-fugitive").setup()
require("plugins.lsp")
require("plugins.completion")
require("plugins.formatting")

require("ui.statusline").setup()

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
