return {
	{
		"saghen/blink.cmp",
		version = "1.*",
		dependencies = {
			"fang2hou/blink-copilot",
			"echasnovski/mini.snippets",
		},
		opts = {
			keymap = { preset = "default" },
			appearance = {
				nerd_font_variant = "mono",
			},
			completion = { documentation = { auto_show = true } },
			signature = {
				enabled = true,
			},
			snippets = { preset = "mini_snippets" },
			sources = {
				-- default = { "lsp", "path", "snippets", "copilot", "buffer" },
				default = { "lsp", "path", "snippets", "buffer" },
				providers = {
					copilot = {
						name = "copilot",
						module = "blink-copilot",
						score_offset = 100,
						async = true,
					},
				},
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},
	{
		"github/copilot.vim",
		-- cmd = "Copilot",
		-- event = "BufWinEnter",
		-- init = function()
		-- 	vim.g.copilot_no_maps = true
		-- end,
		-- config = function()
		-- 	-- Block the normal Copilot suggestions
		-- 	vim.api.nvim_create_augroup("github_copilot", {
		-- 		clear = true,
		-- 	})
		-- 	vim.api.nvim_create_autocmd({ "FileType", "BufUnload" }, {
		-- 		group = "github_copilot",
		-- 		callback = function(args)
		-- 			vim.fn["copilot#On" .. args.event]()
		-- 		end,
		-- 	})
		-- 	vim.fn["copilot#OnFileType"]()
		-- end,
	},
	{
		"saghen/blink.pairs",
		version = "*", -- (recommended) only required with prebuilt binaries

		-- download prebuilt binaries from github releases
		dependencies = "saghen/blink.download",
		-- OR build from source
		build = "cargo build --release",
		--- @module 'blink.pairs'
		--- @type blink.pairs.Config
		opts = {
			mappings = {
				-- you can call require("blink.pairs.mappings").enable() and require("blink.pairs.mappings").disable() to enable/disable mappings at runtime
				enabled = true,
				-- see the defaults: https://github.com/Saghen/blink.pairs/blob/main/lua/blink/pairs/config/mappings.lua#L10
				pairs = {},
			},
			highlights = {
				enabled = true,
				groups = {
					"BlinkPairsOrange",
					"BlinkPairsPurple",
					"BlinkPairsBlue",
				},
				matchparen = {
					enabled = true,
					group = "MatchParen",
				},
			},
			debug = false,
		},
	},
}
