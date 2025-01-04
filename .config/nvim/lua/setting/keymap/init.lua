vim.keymap.set("n", "<leader>ee",
    "oif err != nil {<CR>}<ESC>O return err<ESC>")

vim.keymap.set("n", "<leader>ne",
    "oif err != nil {<CR>}<ESC>O return nil, err<ESC>")

vim.keymap.set('n', '<leader>pp', '<C-^>', { noremap = true, silent = true })
