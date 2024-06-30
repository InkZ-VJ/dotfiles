-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter`
-- Defer Treesitter setup after first render to improve startup time of 'nvim {filename}'
vim.defer_fn(function()
    require('nvim-treesitter.configs').setup {
        -- rainbow = {
        --     enable = true,
        --     -- list of languages you want to disable the plugin for
        --     disable = { 'jsx', 'cpp' },
        --     -- Which query to use for finding delimiters
        --     query = 'rainbow-parens',
        --     -- Highlight the entire buffer all at once
        --     strategy = require('ts-rainbow').strategy.global,
        -- },
        -- Add languages to be installed here that you want installed for treesitter
        ensure_installed = { 'go', 'lua', 'python', 'rust', 'tsx', 'javascript', 'typescript', 'bash', 'html', 'dockerfile', 'templ', 'solidity', 'yaml', 'tmux', 'proto', 'css', 'fish', 'sql', 'solidity' },
        -- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
        auto_install = false,
        autotag = {
            enable = true,
        },
        pairs = {
            enable = true,
            disable = {},
            highlight_pair_events = {},                                   -- e.g. {"CursorMoved"}, -- when to highlight the pairs, use {} to deactivate highlighting
            highlight_self = false,                                       -- whether to highlight also the part of the pair under cursor (or only the partner)
            goto_right_end = false,                                       -- whether to go to the end of the right partner or the beginning
            fallback_cmd_normal = "call matchit#Match_wrapper('',1,'n')", -- What command to issue when we can't find a pair (e.g. "normal! %")
            keymaps = {
                goto_partner = "<leader>%",
                delete_balanced = "X",
            },
            delete_balanced = {
                only_on_first_char = false, -- whether to trigger balanced delete when on first character of a pair
                fallback_cmd_normal = nil,  -- fallback command when no pair found, can be nil
                longest_partner = false,    -- whether to delete the longest or the shortest pair when multiple found.
                -- E.g. whether to delete the angle bracket or whole tag in  <pair> </pair>
            }
        },
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = '<c-space>',
                node_incremental = '<c-space>',
                scope_incremental = '<c-s>',
                node_decremental = '<M-space>',
            },
        },
        textobjects = {
            select = {
                enable = true,
                lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
                keymaps = {
                    -- You can use the capture groups defined in textobjects.scm
                    ['aa'] = '@parameter.outer',
                    ['ia'] = '@parameter.inner',
                    ['af'] = '@function.outer',
                    ['if'] = '@function.inner',
                    ['ac'] = '@class.outer',
                    ['ic'] = '@class.inner',
                },
            },
            move = {
                enable = true,
                set_jumps = true, -- whether to set jumps in the jumplist
                goto_next_start = {
                    [']m'] = '@function.outer',
                    [']]'] = '@class.outer',
                },
                goto_next_end = {
                    [']M'] = '@function.outer',
                    [']['] = '@class.outer',
                },
                goto_previous_start = {
                    ['[m'] = '@function.outer',
                    ['[['] = '@class.outer',
                },
                goto_previous_end = {
                    ['[M'] = '@function.outer',
                    ['[]'] = '@class.outer',
                },
            },
            swap = {
                enable = true,
                swap_next = {
                    ['<leader>a'] = '@parameter.inner',
                },
                swap_previous = {
                    ['<leader>A'] = '@parameter.inner',
                },
            },
        },
    }
end, 0)

local rainbow_delimiters = require 'rainbow-delimiters'
require('rainbow-delimiters.setup').setup {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    priority = {
        [''] = 110,
        lua = 210,
    },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },
}
