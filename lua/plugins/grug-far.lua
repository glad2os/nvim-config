return {
  "MagicDuck/grug-far.nvim",
  opts = {},
  keys = {
    {
      "<leader>sr",
      function() require("grug-far").open() end,
      desc = "Search and replace",
    },
    {
      "<leader>sr",
      function()
        require("grug-far").open({ prefills = { search = vim.fn.expand("<cword>") } })
      end,
      mode = "v",
      desc = "Search and replace (visual selection)",
    },
  },
}
