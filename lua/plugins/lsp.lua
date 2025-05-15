return {
  -- LSP config
  { "neovim/nvim-lspconfig" },

  -- Optional: Easy LSP installer
  {
    "williamboman/mason.nvim",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls" },
      }
    end,
  },
}

