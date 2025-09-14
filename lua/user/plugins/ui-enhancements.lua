-- ~/.config/nvim/lua/user/plugins/ui-enhancements.lua

return {
	"stevearc/dressing.nvim",
	event = "VeryLazy",
	opts = {
		input = {
			-- Set to false to disable replacement of vim.ui.input
			enabled = true,
		},
		select = {
			-- Set to false to disable replacement of vim.ui.select
			enabled = true,
			-- Use the Telescope backend for selection menus
			backend = "telescope",
		},
	},
}
