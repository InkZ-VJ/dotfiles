vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("setting.template")
require("setting.colemak")
require("setting.keymap")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.completion"),
	require("plugins.fileExplore"),
	require("plugins.fileNavigate"),
	require("plugins.formatter"),
	require("plugins.git"),
	require("plugins.lsp"),
	require("plugins.mini"),
	require("plugins.noice"),
	require("plugins.snack"),
	require("plugins.statusline"),
	require("plugins.telescope"),
	require("plugins.themes"),
	require("plugins.treesitter"),
})

vim.cmd.colorscheme("rose-pine")
