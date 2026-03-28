return {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        checkThirdParty = false,
      },
      completion = {
        callSnippet = "Disable",
        keywordSnippet = "Disable",
      },
    },
  },
}
