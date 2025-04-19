return {
	{
		"echasnovski/mini.nvim",
		version = "*",
		config = function()
			-- require("mini.statusline").setup({
			-- 	use_icons = true,
			-- })
			require("mini.indentscope").setup({
				symbol = "│",
			})
			require("mini.icons").setup({})
			require("mini.pairs").setup({})
			require("mini.comment").setup({})
			-- require("mini.bracketed").setup({})
			require("mini.surround").setup({})
			local hipatterns = require("mini.hipatterns")
			hipatterns.setup({
				highlighters = {
					-- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
					fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
					hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
					todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
					note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },

					-- Highlight hex color strings (`#rrggbb`) using that color
					hex_color = hipatterns.gen_highlighter.hex_color(),
				},
			})

			local gen_loader = require("mini.snippets").gen_loader
			require("mini.snippets").setup({
				snippets = {
                    gen_loader.from_file("~/.config/nvim/snippets/global.json"),
					gen_loader.from_lang({
						lang_patterns = {
							go = { "go/**/*.json", "**/go.json" },
						},
					}),
				},
			})
		end,
	},
}
