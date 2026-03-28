require("conform").setup({
    format_on_save = {
        timeout_ms = 1000,
        lsp_format = "fallback",
    },

    formatters_by_ft = {
        lua = { "stylua" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        sh = { "shfmt" },
        bash = { "shfmt" },
        zsh = { "shfmt" },

        python = function(bufnr)
            if require("conform").get_formatter_info("ruff_format", bufnr).available then
                return { "ruff_format" }
            end
            return { "black" }
        end,
    },

    formatters = {
        ["clang-format"] = {
            prepend_args = { "-style=file", "-fallback-style=GNU" },
        },
    },
})

vim.keymap.set({ "n", "v" }, "<leader>f", function()
    require("conform").format({
        async = true,
        lsp_format = "fallback",
    })
end, { desc = "Format buffer or range" })
