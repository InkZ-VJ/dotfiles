require("rose-pine").setup({
    variant = "moon",      -- auto, main, moon, or dawn
    dark_variant = "main", -- main, moon, or dawn
    dim_inactive_windows = false,
    extend_background_behind_borders = true,

    enable = {
        terminal = true,
        legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
        migrations = true,        -- Handle deprecated options automatically
    },

    styles = {
        bold = false,
        italic = false,
        transparency = true,
    },

    groups = {
        border = "muted",
        link = "iris",
        panel = "surface",

        error = "love",
        hint = "iris",
        info = "foam",
        note = "pine",
        todo = "rose",
        warn = "gold",

        git_add = "foam",
        git_change = "rose",
        git_delete = "love",
        git_dirty = "rose",
        git_ignore = "muted",
        git_merge = "iris",
        git_rename = "pine",
        git_stage = "iris",
        git_text = "rose",
        git_untracked = "subtle",

        h1 = "iris",
        h2 = "foam",
        h3 = "rose",
        h4 = "gold",
        h5 = "pine",
        h6 = "foam",
    },

    highlight_groups = {
        -- Comment = { fg = "foam" },
        -- VertSplit = { fg = "muted", bg = "muted" },
    },

    before_highlight = function(group, highlight, palette)
        -- Disable all undercurls
        -- if highlight.undercurl then
        --     highlight.undercurl = false
        -- end
        --
        -- Change palette colour
        -- if highlight.fg == palette.pine then
        --     highlight.fg = palette.foam
        -- end
    end,
})

require('nightfox').setup({
    options = {
        -- Compiled file's destination location
        compile_path = vim.fn.stdpath("cache") .. "/nightfox",
        compile_file_suffix = "_compiled", -- Compiled file suffix
        transparent = true,                -- Disable setting background
        terminal_colors = true,            -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
        dim_inactive = false,              -- Non focused panes set to alternative background
        module_default = true,             -- Default enable value for modules
        colorblind = {
            enable = false,                -- Enable colorblind support
            simulate_only = false,         -- Only show simulated colorblind colors and not diff shifted
            severity = {
                protan = 0,                -- Severity [0,1] for protan (red)
                deutan = 0,                -- Severity [0,1] for deutan (green)
                tritan = 0,                -- Severity [0,1] for tritan (blue)
            },
        },
        styles = {             -- Style to be applied to different syntax groups
            comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
            conditionals = "bold",
            constants = "bold",
            functions = "italic,bold",
            keywords = "NONE",
            numbers = "NONE",
            operators = "NONE",
            strings = "NONE",
            types = "NONE",
            variables = "NONE",
        },
        modules = { -- List of various plugins and additional options
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            treesitter = true,
            notify = false,
            barbar = true,

        },
    },
    palettes = {
        all = {
            -- Eacch palette defines these colors:
            --   black, red, green, yellow, blue, magenta, cyan, white, orange, pink
            --
            -- These colors have 3 shades: base, bright, and dim
            --
            -- Defining just a color defines it's base color
            red = "#ff1160",
            green = '#00FFD1',
            yellow = '#F6FA70',
            blue = { base = '#0079ff', bright = '#DCF2F1', dim = '#3559E0' },
            cyan = '#2D9596',
            orange = '#ffac3e',
            white = { base = '#ffffff', bright = '#ffffff', dim = '#E1D7C6' },
            magenta = '#8E05C2'
        },
    },
    specs = {},
    groups = {},
})

-- setup must be called before loading
