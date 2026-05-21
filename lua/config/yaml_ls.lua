vim.lsp.enable('yamlls')

vim.lsp.config('yamlls', {
  settings = {
    redhat = { telemetry = { enabled = false } },
    yaml = {
      format   = { enable = true },
      validate = true,
      schemaStore = { enable = false, url = "" },
      schemas = {},
    },
  },
})
