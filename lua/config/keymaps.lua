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
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- telescope-git-branch
vim.keymap.set({'n', 'v'}, '<leader>gf', function()
    require('git_branch').files()
end)

-- telescope recent files
vim.api.nvim_set_keymap("n", "<Leader><Leader>",
  [[<cmd>lua require('telescope').extensions.recent_files.pick()<CR>]],
  {noremap = true, silent = true})

-- telescope buffers
vim.keymap.set('n', '<leader>tb', builtin.buffers, { desc = 'Telescope buffers' })

-- load the session for the current directory
vim.keymap.set("n", "<leader>qs", function() require("persistence").load() end)

-- select a session to load
vim.keymap.set("n", "<leader>qS", function() require("persistence").select() end)

-- load the last session
vim.keymap.set("n", "<leader>ql", function() require("persistence").load({ last = true }) end)

-- stop Persistence => session won't be saved on exit
vim.keymap.set("n", "<leader>qd", function() require("persistence").stop() end)

local opts = { noremap=true, silent=true }
vim.keymap.set("n", "<leader>flua", [[<cmd>lua require("stylua-nvim").format_file()<CR>]], opts)
