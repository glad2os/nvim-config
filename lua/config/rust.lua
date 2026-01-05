vim.lsp.config('*', {
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
})

vim.lsp.config('rust_analyzer', {
  cmd = { 'rust-analyzer' },
  filetypes = { 'rust' },

  root_markers = { 'Cargo.toml', 'rust-project.json', '.git' },

  root_dir = function(bufnr, on_dir)
    local root = vim.fs.root(bufnr, { 'Cargo.toml', 'rust-project.json', '.git' })
    on_dir(root or vim.fs.dirname(vim.api.nvim_buf_get_name(bufnr)))
  end,

  settings = {
    ['rust-analyzer'] = {
      cargo = {
        allFeatures = true,
      },
      checkOnSave = {
        command = 'clippy',
      },
      procMacro = {
        enable = true,
      },
    },
  },
})

vim.lsp.enable('rust_analyzer')
