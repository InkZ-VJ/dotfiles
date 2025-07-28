require("lspconfig").lua_ls.setup({
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_dir = require("lspconfig").util.root_pattern(".git", ".luacheckrc", ".stylua.toml"),
	settings = {
		Lua = {
			completion = {
				callSnippet = "Replace",
			},
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

require("lspconfig").golangci_lint_ls.setup({
	cmd = { "golangci-lint-langserver" },
	filetypes = { "go", "gomod" },
	root_dir = require("lspconfig").util.root_pattern("go.work", "go.mod", ".git"),
	init_options = {
		command = { "golangci-lint", "run", "--output.json.path=stdout", "--show-stats=false" },
	},
	root_markers = {
		".golangci.yml",
		".golangci.yaml",
		".golangci.toml",
		".golangci.json",
		"~/.config/nvim/lua/plugins/lsp/go/golangci.yml",
		"go.work",
		"go.mod",
		".git",
	},
	settings = {},
})

require("lspconfig").zls.setup({
  cmd = { "zls" },
  filetypes = { "zig" ,"zir"},
  root_dir = require("lspconfig").util.root_pattern("build.zig", ".git"),
  single_file_support = true,
  settings = {},
})
