local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local yank_group = augroup("HighlightYank", { clear = true })
local trim_group = augroup("TrimWhitespace", { clear = true })

autocmd("TextYankPost", {
    group = yank_group,
    pattern = "*",
    callback = function()
        vim.hl.on_yank({
            higroup = "IncSearch",
            timeout = 40,
        })
    end,
    desc = "Highlight yanked text",
})

autocmd("BufWritePre", {
    group = trim_group,
    pattern = "*",
    command = [[%s/\s\+$//e]],
    desc = "Remove trailing whitespace before save",
})
