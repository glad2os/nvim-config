-- vim.F.if_nil was removed in nvim 0.12; telescope.nvim still references it
if vim.F and not vim.F.if_nil then
  vim.F.if_nil = function(x, default)
    return x == nil and default or x
  end
end

require("config.fix-clipboard")
require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.helm_ls")
require("config.lua_ls")
require("config.rust")
