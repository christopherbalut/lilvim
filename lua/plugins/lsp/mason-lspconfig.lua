return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  opts = {
    ensure_installed = {
      "clangd",
      "pyright",
      "lua_ls",
      "bashls"
    },
    automatic_installation = true,
  },
}
