local M = {}

function M.harpoon_status()
    local ok, harpoon = pcall(require, "harpoon")
    if not ok then
        return ""
    end

    local list = harpoon:list()
    if not list or not list.items then
        return " H:N"
    end

    local current = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":p")
    local total = 0
    local current_idx = nil

    for i, item in ipairs(list.items) do
        if item and item.value and item.value ~= "" then
            total = total + 1
            if vim.fn.fnamemodify(item.value, ":p") == current then
                current_idx = i
            end
        end
    end

    if total == 0 then
        return " H:N"
    end

    if current_idx then
        return string.format(" H:%d/%d", current_idx, total)
    end

    return string.format(" H:-/%d", total)
end

function M.setup()
    local statusline = {
        " %t",
        "%r",
        "%m",
        "%{v:lua.require'ui.statusline'.harpoon_status()}",
        "%=",
        "%{&filetype}",
        " %2p%%",
        " %3l:%-2c:%L ",
    }

    vim.o.statusline = table.concat(statusline, "")
    vim.o.laststatus = 3
end

return M
