return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "Snikimonkd/telescope-git-conflicts.nvim",
    },
    config = function()
        require("telescope").setup({})
        require("telescope").load_extension("conflicts")
    end,
}
