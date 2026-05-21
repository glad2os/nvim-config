return {
  "wsdjeg/git.nvim",
  dependencies = {
    "wsdjeg/job.nvim",
    "wsdjeg/notify.nvim",
  },
  keys = {
    { "<leader>gs", "<cmd>Git status<cr>",  desc = "Git status" },
    { "<leader>gc", "<cmd>Git commit<cr>",  desc = "Git commit" },
    { "<leader>gb", "<cmd>Git branch<cr>",  desc = "Git branch" },
    { "<leader>gl", "<cmd>Git log<cr>",     desc = "Git log" },
    { "<leader>gd", "<cmd>Git diff<cr>",    desc = "Git diff" },
    { "<leader>gp", "<cmd>Git push<cr>",    desc = "Git push" },
    { "<leader>gP", "<cmd>Git pull<cr>",    desc = "Git pull" },
    { "<leader>gB", "<cmd>Git blame<cr>",   desc = "Git blame" },
  },
}
