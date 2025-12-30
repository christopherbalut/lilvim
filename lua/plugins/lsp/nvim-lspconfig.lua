return {
	"neovim/nvim-lspconfig",
	config = function()
		-- nvim-cmp -> LSP capabilities
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- C / C++
		vim.lsp.config.clangd = {
			capabilities = capabilities,
			cmd = { "clangd", "--background-index", "--clang-tidy", "--compile-commands-dir=build" },
		}
		vim.lsp.enable("clangd")

		-- Python
		vim.lsp.config.pyright = {
			capabilities = capabilities,
		}
		vim.lsp.enable("pyright")

		-- Lua
		vim.lsp.config.lua_ls = {
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = { globals = { "vim" } },
					workspace = {
						checkThirdParty = false,
					},
					telemetry = { enable = false },
				},
			},
		}
		vim.lsp.enable("lua_ls")

		-- Bash
		vim.lsp.config.bashls = {
			capabilities = capabilities,
		}
		vim.lsp.enable("bashls")
	end,
}
