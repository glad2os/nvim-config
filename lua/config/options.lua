vim.opt.cursorcolumn  = true
vim.opt.shiftwidth    = 2
vim.opt.tabstop       = 2
vim.opt.expandtab     = true
vim.opt.number        = true
vim.opt.relativenumber = false

-- Register compound yaml filetypes that nvim-lspconfig expects but no longer provides ftdetect for
vim.filetype.add({
  filename = {
    ["docker-compose.yml"]  = "yaml.docker-compose",
    ["docker-compose.yaml"] = "yaml.docker-compose",
    ["compose.yml"]         = "yaml.docker-compose",
    ["compose.yaml"]        = "yaml.docker-compose",
    [".gitlab-ci.yml"]      = "yaml.gitlab",
    [".gitlab-ci.yaml"]     = "yaml.gitlab",
  },
  pattern = {
    [".*/docker%-compose%-.+%.ya?ml"] = "yaml.docker-compose",
    [".*/values.*%.ya?ml"]            = "yaml.helm-values",
  },
})

-- Disable unused providers to silence :checkhealth warnings
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

-- Work around an upstream Neovim 0.12 / tree-sitter-vim highlight query mismatch.
vim.treesitter.query.set("vim", "highlights", "")

