
return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        options = {
            theme = "auto",
            section_separators = "",
            component_separators = "",
            globalstatus = true,
            icons_enabled = true,
        },
        sections = {
            lualine_a = { { "mode", upper = true } },
            lualine_b = { { "filename", path = 0 } },
            lualine_c = {
                function()
                    local v = vim.version()
                    return ("v%d.%d"):format(v.major, v.minor)
                end,
                {
                    "diagnostics",
                    sources = { "nvim_diagnostic" },
                    symbols = { error = " ", warn = " ", info = " ", hint = "󰌵 " },
                },
            },
            lualine_x = {
                function()
                    local clients = vim.lsp.get_clients({ bufnr = 0 })
                    if #clients == 0 then return "LSP ~ none" end
                    local names = {}
                    for _, c in ipairs(clients) do names[#names + 1] = c.name end
                    return "LSP ~ " .. table.concat(names, ", ")
                end,
                "filetype",
            },
            lualine_y = {},
            lualine_z = { "progress" },
        },
    },
}

