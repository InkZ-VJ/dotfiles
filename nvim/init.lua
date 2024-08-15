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
    -- lsp config
    require 'lazy.lsp.mason',
    require 'lazy.lsp.null_ls',
    require 'lazy.lsp.go',
    -- lua line
    require 'lazy.lualine.lualine',
    -- auto complete
    require 'lazy.autocomplete.cmp',
    -- auto pair
    require 'lazy.autocomplete.pair',
    -- auto close tag
    require 'lazy.autocomplete.tag',
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
    require 'lazy.flash',
    require 'lazy.template.indent'
})

-- [[Setting Option]]

-- diagnostic
require('setting.diagnostic')
-- Telescope setup
require('setting.telescope')
-- Treesitter
require('setting.treesitter')
-- LSP
require('setting.lsp')
-- cmp
require('setting.cmp')
-- harpoon2
require('setting.harpoon')
--cmdline
require('setting.cmdline')
--theme
require("setting.theme")
require("setting.nvimtree")
require("setting.go")
require("setting.flash")
require("setting.oil.oil")
require("setting.indent.indent")

vim.cmd [[colorscheme catppuccin-mocha]]
