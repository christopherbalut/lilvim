return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "bash", "lua", "c", "cpp", "vim", "vimdoc", "json", "markdown", "python" },
    highlight = { enable = true, additional_vim_regex_highligting = false, },
    indent = { enable = true },
    auto_install = true,
  },
}

-- Treesitter
-- For Treesitter Playground: Include in NeoVim, use:
-- :Inspect to show the highlight groups under the cursor
-- :InspectTree to show the parsed syntax tree ("TSPlayground")
-- :EditQuery to open the Live Query Editor (Nvim 0.10+)
