return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"orjangj/neotest-ctest",
	},
	config = function()
		local neotest = require("neotest")

		neotest.setup({
			adapters = {
				require("neotest-ctest").setup({
					build_dir = "build",
					ctest_args = { "--output-on-failure" },
					cwd = function()
						return vim.fn.getcwd()
					end,
				}),
			},
		})

		-- Keymaps
		vim.keymap.set("n", "<leader>tr", function()
			neotest.run.run()
		end, { desc = "Test: Run nearest" })

		vim.keymap.set("n", "<leader>ts", function()
			neotest.run.run({ suite = true })
		end, { desc = "Test: Run suite" })

		vim.keymap.set("n", "<leader>td", function()
			neotest.run.run({ strategy = "dap" })
		end, { desc = "Test: Debug nearest" })

		vim.keymap.set("n", "<leader>to", function()
			neotest.output.open({ enter = true })
		end, { desc = "Test: Output" })

		vim.keymap.set("n", "<leader>tv", function()
			neotest.summary.toggle()
		end, { desc = "Test: Summary" })
	end,
}
