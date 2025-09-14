-- ~/.config/nvim/lua/user/plugins/trouble.lua

return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		-- your configuration goes here
		-- or leave it empty to use the default settings
	},
	keys = {
		{ "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
		{ "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
		{ "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics" },
	},
}
