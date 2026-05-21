return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "Snikimonkd/telescope-git-conflicts.nvim",
    "mrloop/telescope-git-branch.nvim",
    "smartpde/telescope-recent-files",
  },
  config = function()
    require("telescope").setup({
      defaults = {
        -- nvim 0.12's bundled lua highlights.scm uses the `operator` field
        -- which the nvim-treesitter lua parser doesn't define yet.
        -- Run :TSUpdate lua once to get a parser that supports it,
        -- then this line can be removed.
        preview = { treesitter = false },
      },
    })
    require("telescope").load_extension("conflicts")
    require("telescope").load_extension("recent_files")
  end,
}
