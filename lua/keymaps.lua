-- Keymaps
-- local map = vim.keymap.set

-- Plugin Specific Mappings
-- Telescope
local builtin = require("telescope.builtin") -- since not lazy loaded
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" }) -- desc = "Telescope find files"
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}) -- desc = "Telescope live grep"
vim.keymap.set("n", "<leader>fb", builtin.buffers, {}) -- desc = "Telescope buffers"
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {}) -- desc = "Telescope help tags"
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>fs", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- Treesitter
-- For Treesitter Playground: Include in NeoVim, use:
-- :Inspect to show the highlight groups under the cursor
-- :InspectTree to show the parsed syntax tree ("TSPlayground")
-- :EditQuery to open the Live Query Editor (Nvim 0.10+)

-- Nvim-lspconfig
vim.keymap.set("n", "K", vim.lsp.buf.hover, {}) -- desc = LSP hover
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {}) -- desc = LSP definition
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {}) -- desc = "Lsp refactoring suggestions"

-- None-ls
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}) -- desc = "formatting everyting in buffer using none-ls


-- Vim Specific Mappings
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "=ap", "ma=ap'a")

vim.keymap.set("x", "<leader>p", [["_dP]]) -- preserve cpy buffer

-- save into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete but don't save
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>") -- no more :Q 

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- go to new project and create new tmux session

-- move backwards and fowards through errors
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- move backwards and forwards through location list (window-local diagnostics)
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- replace word under cursor
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) -- make file executable



