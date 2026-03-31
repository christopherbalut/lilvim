require("blink.cmp").setup({
    keymap = {
        preset = "default",

        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-e>"] = { "hide", "fallback" },
        ["<C-y>"] = { "select_and_accept", "fallback" },

        ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
        ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },

        ["<CR>"] = { "fallback" },
    },

    completion = {
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 10,
            window = {
                border = "rounded",
            },
        },
    },

    signature = { enabled = true },

    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },

    fuzzy = {
        implementation = "prefer_rust_with_warning",
    },
})

require("nvim-autopairs").setup({})
