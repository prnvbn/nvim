return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			-- vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "fuzzy find files" })
			-- vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "grep files" })
		end,
		keys = {
			{ "<leader>ts", "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
		},
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
	{
		"ahmedkhalf/project.nvim",
		config = function()
			require("project_nvim").setup({
				detection_methods = { "lsp", "pattern" },
				patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
			})
			require("telescope").load_extension("projects")
		end,
	},
}
