return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",

    -- fzf native (optional but recommended)
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },

    -- ui-select
    "nvim-telescope/telescope-ui-select.nvim",
  },

  config = function()
    local telescope = require("telescope")
    local themes = require("telescope.themes")

    telescope.setup({
      extensions = {
        ["ui-select"] = {
          themes.get_dropdown({
            -- you can tweak these later
            previewer = false,
            initial_mode = "normal",
          }),
        },
      },
    })

    telescope.load_extension("fzf")
    telescope.load_extension("ui-select")
  end,
}
