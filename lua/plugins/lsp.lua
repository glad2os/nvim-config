return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "helm_ls", "yamlls", "tflint", "terraformls" },
    },
    dependencies = {
      { "williamboman/mason.nvim", config = true },

      "neovim/nvim-lspconfig",
    },
  },
}

