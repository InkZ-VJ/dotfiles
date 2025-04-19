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
				default = { "copilot", "lsp", "path", "snippets", "buffer" },
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
		cmd = "Copilot",
		event = "BufWinEnter",
		init = function()
			vim.g.copilot_no_maps = true
		end,
		config = function()
			-- Block the normal Copilot suggestions
			vim.api.nvim_create_augroup("github_copilot", {
				clear = true,
			})
			vim.api.nvim_create_autocmd({ "FileType", "BufUnload" }, {
				group = "github_copilot",
				callback = function(args)
					vim.fn["copilot#On" .. args.event]()
				end,
			})
			vim.fn["copilot#OnFileType"]()
		end,
	},
}
