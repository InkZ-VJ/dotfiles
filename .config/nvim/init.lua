vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- keymap
require('setting.keymap')
-- template setup
require('setting.template')
-- remap for colemak Users
require('colemak')


-- Lazy Package Maneger
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    }
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    -- theme setup
    require 'lazy.theme.theme',
    require 'lazy.dashboard.hyper',
    -- auto format
    require 'lazy.autoformat.format',
    require 'lazy.autoformat.prettier',
    -- lsp config
    require 'lazy.lsp.mason',
    require 'lazy.lsp.null_ls',
    require 'lazy.lsp.go',
    -- status line
    require 'lazy.statusbar',
    -- auto complete
    require 'lazy.autocomplete.completion',
    -- Telescope
    require 'lazy.telescope.telescope',
    -- treesitter
    require 'lazy.treesitter.treesitter',
    -- cmdline
    require 'lazy.cmdline.cmdline',
    -- harpoon2
    require 'lazy.harpoon.harpoon',
    -- comment
    require 'lazy.comment.comment',
    require 'lazy.fileExplore.nvimtree',
    require 'lazy.undotree.undotree',
    require 'lazy.fileNavigator',
    -- require 'lazy.template.indent',
    require 'lazy.git',
    require 'lazy.copilot.copilot',
})

-- [[Setting Option]]

require('setting.diagnostic')
require('setting.telescope')
require('setting.treesitter')
require('setting.lsp')
require('setting.cmp')
require('setting.harpoon')
require('setting.cmdline')
require("setting.theme")
require("setting.nvimtree")
require("setting.go")
require("setting.flash")
require("setting.oil")
require("setting.prettier")
require("setting.aerial")

vim.cmd [[colorscheme catppuccin]]
