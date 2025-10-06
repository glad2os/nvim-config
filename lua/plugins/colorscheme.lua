return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night",
    transparent = true,
    styles = { sidebars = "transparent", floats = "transparent" },
  },
  config = function(_, opts)
    vim.opt.termguicolors = true
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight")   -- стиль берётся из opts.style

    -- добиваем "плашки" от плагинов/окон
    local function make_transparent()
      local groups = {
        "Normal","NormalNC","SignColumn","EndOfBuffer",
        "LineNr","CursorLineNr","FoldColumn",
        "NormalFloat","FloatBorder","WinSeparator","MsgArea",
        -- популярные плагины
        "TelescopeNormal","TelescopeBorder",
        "NvimTreeNormal","NvimTreeNormalNC",
      }
      for _, g in ipairs(groups) do
        pcall(vim.api.nvim_set_hl, 0, g, { bg = "none" })
      end
    end
    vim.api.nvim_create_autocmd("ColorScheme", {
      group = vim.api.nvim_create_augroup("TokyonightTransparent", { clear = true }),
      callback = make_transparent,
    })
    make_transparent()
  end,
}
