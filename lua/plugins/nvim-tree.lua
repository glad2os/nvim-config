return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup {
      view = {
        width = 30,
        side = "left",
      },
      git = {
        enable = true,
        ignore = false,  -- показывать файлы, игнорируемые git
      },
      filters = {
        dotfiles = false,  -- показывать скрытые файлы (начинающиеся с .)
        custom = {},      -- можно добавить свои фильтры при необходимости
      },
      renderer = {
        show_hidden = true,  -- отображать скрытые файлы в дереве
      },
    }

    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
  end,
}
