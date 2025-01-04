return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        bigfile = { enabled = true },
        dashboard = { enabled = true },
        indent = { enabled = false },
        input = { enabled = false },
        notifier = { enabled = false },
        quickfile = { enabled = true },
        scroll = { enabled = false },
        statuscolumn = { enabled = true },
        words = { enabled = false },
    },
}
