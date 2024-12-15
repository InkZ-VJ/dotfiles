local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Vim for Colemak
map("", "n", "j", {})
map("", "e", "k", {})
map("", "i", "l", {})
map("", "j", "e", {})
map("", "k", "n", {})
map("", "l", "i", {})

map("", "K", "N", {})
map("", "L", "I", {})
map("", "H", "0", {})
map("", "I", "$", {})
map("", "N", "20j", {})
map("", "E", "20k", {})

map("n", "<C-w>n", "<C-w>j", {})
map("n", "<C-w>e", "<C-w>k", {})
map("n", "<C-w>i", "<C-w>l", {})
map("n", "<C-w>h", "<C-w>h", {})
