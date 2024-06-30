-- Explore File
vim.keymap.set("n", "<leader>nt", vim.cmd.Ex)

vim.keymap.set("n", "<leader>ee",
    "oif err != nil {<CR>}<ESC>O return err<ESC>")

-- Comment out selected lines with //
vim.api.nvim_set_keymap('v', '<Leader>c', [[:s/^/\/\//<CR>]], { noremap = true, silent = true })

-- Uncomment selected lines with <Leader>uc
vim.api.nvim_set_keymap('v', '<Leader>uc', [[:s/^\/\///<CR>]], { noremap = true, silent = true })

-- Go to previous file explore
vim.api.nvim_set_keymap('n', '<leader>pp', ':e#<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Leader>uc', [[:s/^\/\///<CR>]], { noremap = true, silent = true })
