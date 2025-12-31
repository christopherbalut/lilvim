return {
	{
		"mason-org/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},

	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = {
				"clangd",
				"pyright",
				"lua_ls",
				"bashls",
			},
			automatic_installation = true,
		},
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local function setup(server, opts)
				opts = opts or {}
				opts.capabilities = capabilities
				vim.lsp.config[server] = opts
				vim.lsp.enable(server)
			end

			-- C / C++
			setup("clangd", {
				cmd = { "clangd", "--background-index", "--clang-tidy", "--compile-commands-dir=build" },
			})

			-- Python
			setup("pyright")

			-- Lua
			setup("lua_ls", {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
						workspace = { checkThirdParty = false },
						telemetry = { enable = false },
					},
				},
			})

			-- Bash
			setup("bashls")
		end,
	},
}
