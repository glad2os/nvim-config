return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup {
      open_mapping = [[<c-\>]],
      direction = "horizontal", -- or 'horizontal', 'vertical', 'tab'
      float_opts = {
        border = "curved",
      },
      shell = vim.o.shell,
    }

    -- Optional keybinds for convenience
    vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
  end,
}

