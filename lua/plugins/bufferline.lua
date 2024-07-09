return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			show_buffer_icons = false,
			show_buffer_close_icons = false,
			separator_style = "thin",
			offsets = {
				close_icon = "x",
				{
					filetype = "neo-tree",
					text = "File Tree",
					separator = true,
					text_align = "left",
				},
				{
					diagnostics = "nvim_lsp",
					separator_style = { "", "" },
					modified_icon = "●",
					show_close_icon = false,
					show_buffer_close_icons = true,
				},
			},
		},
	},
}
