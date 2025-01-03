local theme = {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("plugins.theme.config.catppuccin")
        end
    },
    {
        'rose-pine/neovim',
        priority = 999,
        config = function()
            require("plugins.theme.config.rose-pine")
        end
    },
}

return theme
