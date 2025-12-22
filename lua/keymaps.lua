-- Keymaps
-- Nvim-lspconfig
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" }) -- desc = LSP hover
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP definition" }) -- desc = LSP definition
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP refactoring suggestions" }) -- desc = "Lsp refactoring suggestions"

-- None-ls
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}) -- desc = "formatting everyting in buffer using none-ls
-- Vim-fugitive
vim.keymap.set("n", "<leader>gs", "<cmd>Git<CR>", { desc = "Git status" })

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
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

vim.keymap.set("n", "Q", "<nop>") -- no more :Q

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- go to new project and create new tmux session

-- move backwards and fowards through errors
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- move backwards and forwards through location list (window-local diagnostics)
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Repace word under cursor" }
) -- replace word under cursor
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make current file executable" }) -- make file executable
