require("telescope").setup({})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Telescope find git files" })
vim.keymap.set("n", "<leader>fs", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, {
	desc = "Find string",
})
vim.keymap.set("n", "<leader>fw", function()
	local word = vim.fn.expand("<cword>")
	require("telescope.builtin").grep_string({ search = word })
end, { desc = "Grep current word" })
vim.keymap.set("n", "<leader>fW", function()
	local word = vim.fn.expand("<cWORD>")
	require("telescope.builtin").grep_string({ search = word })
end, { desc = "Grep current word up until whitespace" })
