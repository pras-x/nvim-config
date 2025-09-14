-- ~/.config/nvim/lua/user/plugins/todo-comments.lua

return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		-- your configuration goes here
		-- or leave it empty to use the default settings
	},
	-- Add a keymap to easily access the todo list
	keys = {
		{ "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "[F]ind [T]odos" },
	},
}
