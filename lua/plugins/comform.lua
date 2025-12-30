return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
			sh = { "shfmt" },
			c = { "clang_format" },
			cpp = { "clang_format" },
		},
		format_on_save = {
			lsp_fallback = true, -- uses LSP formatting if no external formatter is set
			timeout_ms = 2000,
		},
	},
}
