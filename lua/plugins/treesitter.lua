require("nvim-treesitter").setup({
  install_dir = vim.fn.stdpath("data") .. "/site",
})

require("nvim-treesitter").install({
  "lua",
  "vimdoc",
  "bash",
  "markdown",
  "c",
  "cpp",
  "python",
  "make",
  "cmake",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "lua",
    "vim",
    "markdown",
    "c",
    "cpp",
    "python",
    "sh",
    "make",
    "cmake",
  },
  callback = function(ev)
    vim.treesitter.start(ev.buf)
  end,
})
