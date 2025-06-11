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
        ignore = false
      },
      filters = {
        dotfiles = false,
        custom = { "^.git$" },
      },
    }

    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
  end,
}
