local theme = {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'catppuccin'
            require("setting.theme.catppuccin")
        end
    },
    {
        'rose-pine/neovim',
        priority = 999,
        config = function()
            vim.cmd.colorscheme 'catppuccin'
            require("setting.theme.rose-pine")
        end
    },
}

return theme
