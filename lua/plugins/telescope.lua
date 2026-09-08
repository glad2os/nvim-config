return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "Snikimonkd/telescope-git-conflicts.nvim",
    "mrloop/telescope-git-branch.nvim",
    "smartpde/telescope-recent-files",
  },
  config = function()
    require("telescope").setup({})
    require("telescope").load_extension("conflicts")
    require("telescope").load_extension("recent_files")
  end,
}
