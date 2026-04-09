return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  lazy = false,
  opts = {
    ensure_installed = { "bash","dockerfile","helm","yaml","lua","json","markdown","vim","terraform","hcl", "rust"},
    highlight = { enable = true, additional_vim_regex_highlighting = false },
    indent = { enable = true },
  },
  config = function(_, opts)
    require("nvim-treesitter").setup(opts)
  end,
}
