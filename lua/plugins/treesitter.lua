return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
      auto_install = true,
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = {
				"lua",
				-- Golang
				"go",
				"gomod",
				"gosum",
				"gowork",
				-- Rust
				"rust",
				-- Python
				"python",
				"c",
				"vim",
				"vimdoc",
				"query",
				"elixir",
				"heex",
				"javascript",
				"html",
			},
		})
	end,
}
