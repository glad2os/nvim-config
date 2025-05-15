-- Vertical split with current file
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { desc = "Vertical Split" })

-- Horizontal split with current file
vim.keymap.set("n", "<leader>h", ":split<CR>", { desc = "Horizontal Split" })

-- Save the file 
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file", silent = true })
