-- This file is automatically loaded by plugins.config

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")

-- mappings
local wk = require("which-key")

-- LSP Mappings
wk.register({
	g = {
		d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Go to Definition" },
		f = { "<cmd>lua vim.lsp.buf.format()<CR>", "Format File" },
	},
	["<leader>ca"] = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
}, { prefix = "" })
