local M = {}

function M.setup()
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })

    local group = vim.api.nvim_create_augroup("UserFugitiveConfig", { clear = true })

    vim.api.nvim_create_autocmd("BufWinEnter", {
        group = group,
        pattern = "*",
        callback = function()
            if vim.bo.filetype ~= "fugitive" then
                return
            end

            local bufnr = vim.api.nvim_get_current_buf()
            local opts = { buffer = bufnr, remap = false }

            vim.keymap.set("n", "<leader>p", function()
                vim.cmd.Git("push")
            end, vim.tbl_extend("force", opts, { desc = "Git push" }))

            vim.keymap.set("n", "<leader>P", function()
                vim.cmd.Git({ "pull", "--rebase" })
            end, vim.tbl_extend("force", opts, { desc = "Git pull --rebase" }))

            vim.keymap.set(
                "n",
                "<leader>t",
                ":Git push -u origin ",
                vim.tbl_extend("force", opts, { desc = "Git push -u origin <branch>" })
            )
        end,
    })

    vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>", {
        desc = "Get left side of diff",
    })

    vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>", {
        desc = "Get right side of diff",
    })
end

return M
