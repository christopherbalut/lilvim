-- Indentation
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- For lualine
-- vim.opt.showmode = false

-- Mouse Options
vim.opt.mouse = "a"

vim.opt.smartindent = true -- better indentation

-- no swaps but undotree handles file history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

-- better searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true -- better colours

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
