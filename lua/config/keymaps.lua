-- Vertical split with current file
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { desc = "Vertical Split" })

-- Horizontal split with current file
vim.keymap.set("n", "<leader>h", ":split<CR>", { desc = "Horizontal Split" })

-- Save the file 
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file", silent = true })


-- Telescope

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
