local treesitter = { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
		"theHamsta/nvim-treesitter-pairs",
		"https://gitlab.com/HiPhish/rainbow-delimiters.nvim",
		"nvim-treesitter/nvim-treesitter-context",
	},
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"go",
			"gowork",
			"gotmpl",
			"lua",
			"python",
			"rust",
			"tsx",
			"javascript",
			"typescript",
			"bash",
			"html",
			"dockerfile",
			"templ",
			"solidity",
			"yaml",
			"tmux",
			"proto",
			"css",
			"fish",
			"sql",
			"solidity",
			"nix",
			"dot",
		},
		-- Autoinstall languages that are not installed
		auto_install = true,
		highlight = {
			enable = true,
			-- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
			--  If you are experiencing weird indenting issues, add the language to
			--  the list of additional_vim_regex_highlighting and disabled languages for indent.
			additional_vim_regex_highlighting = { "ruby", "go" },
		},
		indent = { enable = true, disable = { "ruby" } },
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "gnn", -- set to `false` to disable one of the mappings
				node_incremental = "grn",
				scope_incremental = "grc",
				node_decremental = "grm",
			},
		},
	},
	config = function(_, opts)
		-- [[ Configure Treesitter ]] See `:help nvim-treesitter`

		-- Prefer git instead of curl in order to improve connectivity in some environments
		require("nvim-treesitter.install").prefer_git = true
		---@diagnostic disable-next-line: missing-fields
		require("nvim-treesitter.configs").setup(opts)

		-- There are additional nvim-treesitter modules that you can use to interact
		-- with nvim-treesitter. You should go explore a few and see what interests you:
		--
		--    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
		--    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
		--    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
		require("setting.treesitter")
	end,
}

return treesitter
