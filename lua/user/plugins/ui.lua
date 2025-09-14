-- ~/.config/nvim/lua/user/plugins/ui.lua (Updated)

return {
	-- Statusline
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				theme = "tokyonight",
			},
		},
	},

	-- The nvim-tree section has been removed from this file.
}
