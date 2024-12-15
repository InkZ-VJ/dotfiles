-- Explore File
vim.keymap.set("n", "<leader>nt", vim.cmd.Ex)

vim.keymap.set("n", "<leader>ee",
    "oif err != nil {<CR>}<ESC>O return err<ESC>")

vim.keymap.set("n", "<leader>ne",
    "oif err != nil {<CR>}<ESC>O return nil, err<ESC>")

-- Go to previous file explore
vim.api.nvim_set_keymap('n', '<leader>pp', ':e#<CR>', { noremap = true, silent = true })
