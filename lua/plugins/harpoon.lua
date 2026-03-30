local harpoon = require("harpoon")

vim.keymap.set("n", "<leader>a", function()
    harpoon:list():add()
end, { desc = "Harpoon add file" })

vim.keymap.set("n", "<M-e>", function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon: menu" })

-- Jump to files
vim.keymap.set("n", "<M-1>", function()
    harpoon:list():select(1)
end, { desc = "Harpoon file 1" })

vim.keymap.set("n", "<M-2>", function()
    harpoon:list():select(2)
end, { desc = "Harpoon file 2" })

vim.keymap.set("n", "<M-3>", function()
    harpoon:list():select(3)
end, { desc = "Harpoon file 3" })

vim.keymap.set("n", "<M-4>", function()
    harpoon:list():select(4)
end, { desc = "Harpoon file 4" })

vim.keymap.set("n", "<M-5>", function()
    harpoon:list():select(5)
end, { desc = "Harpoon file 5" })

vim.keymap.set("n", "<M-6>", function()
    harpoon:list():select(6)
end, { desc = "Harpoon file 6" })

vim.keymap.set("n", "<M-7>", function()
    harpoon:list():select(7)
end, { desc = "Harpoon file 7" })
