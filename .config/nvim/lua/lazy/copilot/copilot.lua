local copilot = {
    {
        "github/copilot.vim",

    },
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        enabled = false,
        config = function()
            require("copilot").setup({
                suggestion = { enabled = false },
                panel = { enabled = false },
            })
        end,
    },
    {
        "zbirenbaum/copilot-cmp",
        enabled = false,
        config = function()
            require("copilot_cmp").setup()
        end
    },
}

return copilot
