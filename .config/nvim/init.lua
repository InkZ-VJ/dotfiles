vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- template setup
require("setting.template")

require("setting.keymap")
-- remap for colemak Users
require("colemak")

-- Lazy Package Maneger
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
	require("plugins.theme"),
	require("plugins.autoformat"),
	require("plugins.lsp"),
	require("plugins.mini"),
	require("plugins.autocomplete"),
	require("plugins.telescope"),
	require("plugins.treesitter"),
	require("plugins.noice"),
	require("plugins.snack"),
	require("plugins.fileExplore"),
	require("plugins.undo"),
	require("plugins.fileNavigator"),
	require("plugins.git"),
	require("plugins.copilot"),
	require("plugins.debug"),
})

-- vim.cmd.colorscheme("catppuccin")
vim.cmd.colorscheme("rose-pine")
vim.api.nvim_set_hl(0, "LuasnipChoiceNode", {
	bg = "#403d52",
	fg = "#9ccfd8",
})
