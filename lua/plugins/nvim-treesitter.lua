-- The `main` branch dropped the old `setup(opts)` API: it now takes only
-- `install_dir`, so `ensure_installed` / `highlight` / `indent` are ignored.
-- Parsers are installed with `install()` (into ~/.local/share/nvim/site/parser)
-- and highlighting is switched on per buffer with `vim.treesitter.start()`.
local ensure_installed = {
  "bash",
  "dockerfile",
  "hcl",
  "helm",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "regex",
  "rust",
  "terraform",
  "vim",
  "yaml",
}

return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    local ts = require("nvim-treesitter")
    ts.setup()

    local installed = {}
    for _, lang in ipairs(ts.get_installed("parsers")) do
      installed[lang] = true
    end
    local missing = vim.tbl_filter(function(lang)
      return not installed[lang]
    end, ensure_installed)

    if #missing > 0 then
      -- `main` compiles parsers itself and needs the tree-sitter CLI (>= 0.26.1).
      if vim.fn.executable("tree-sitter") == 1 then
        ts.install(missing)
      else
        vim.notify(
          "nvim-treesitter: `tree-sitter` CLI not found, skipping install of " .. table.concat(missing, ", "),
          vim.log.levels.WARN
        )
      end
    end

    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("nvim_treesitter_start", { clear = true }),
      callback = function(ev)
        local lang = vim.treesitter.language.get_lang(ev.match)
        if not lang or not vim.tbl_contains(ts.get_installed("parsers"), lang) then
          return
        end
        if not pcall(vim.treesitter.start, ev.buf, lang) then
          return
        end
        local ok, indents = pcall(vim.treesitter.query.get, lang, "indents")
        if ok and indents then
          vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
