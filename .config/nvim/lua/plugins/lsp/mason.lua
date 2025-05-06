require("mason").setup()

local ensure_installed = vim.tbl_keys({})
vim.list_extend(ensure_installed, {
	"stylua",
	"api-linter",
	"buf",
	"buf-language-server",
	"dot-language-server",
	"dotenv-linter",
	"gitlab-ci-ls",
	"goimports",
	"gofumpt",
	"golangci-lint",
	"golangci_lint_ls",
	"gomodifytags",
	"gopls",
	"gotests",
	"gotestsum",
	"html-lsp",
	"lua-language-server",
	"pbls",
	"prettierd",
	"protolint",
	"shellcheck",
	"shfmt",
	"sqlfmt",
	"stylua",
	"yaml-language-server",
	"yamlfmt",
})
require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

require("mason-lspconfig").setup({})
