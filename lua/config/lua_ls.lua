--  vim.lsp.config({
--   settings = {
--     Lua = {
--       runtime = { version = "LuaJIT" },
--       diagnostics = { globals = { "vim" } },
--       workspace = {
--         library = vim.api.nvim_get_runtime_file("", true),
--         checkThirdParty = false,
--       },
--       telemetry = { enable = false },
--     },
--   },
-- })
--
-- -- Register Lua LS config
vim.lsp.config('lua_ls', {
  -- cmd = { 'lua-language-server' }, -- usually not needed if it's on $PATH
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

