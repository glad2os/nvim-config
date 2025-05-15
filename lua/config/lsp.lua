require("lspconfig").lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT", -- or "Lua 5.1", etc.
      },
      diagnostics = {
        globals = { "vim" }, -- Recognize `vim` as a global
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false, -- Prevent unnecessary prompts
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

