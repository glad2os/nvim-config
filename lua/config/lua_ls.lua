vim.lsp.config('lua_ls', {
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.luarc.jsonc', '.git' },
  settings = {
    Lua = {
      workspace = { checkThirdParty = false },
      diagnostics = { globals = { 'vim' } },
      telemetry = { enable = false },
      hint = { enable = true },
      completion = { callSnippet = 'Replace' },
    },
  },
})

