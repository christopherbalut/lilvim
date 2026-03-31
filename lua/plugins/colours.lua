require("rose-pine").setup({
    disable_background = true,
    styles = {
        italic = false,
    },
})

vim.cmd.colorscheme("rose-pine")

vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
