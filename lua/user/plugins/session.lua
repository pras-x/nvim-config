-- ~/.config/nvim/lua/user/plugins/session.lua

return {
	"olimorris/persisted.nvim",
	event = "VeryLazy",
	opts = {
		-- Automatically save and load sessions
		autosave = true,
		autoload = true,
		-- Don't do anything if no session is found (allows dashboard to show)
		on_autoload_no_session = function() end,
		-- Stop the LSP clients of inactive sessions to save resources
		stop_lsp = true,
	},
	config = function(_, opts)
		require("persisted").setup(opts)
		-- Add a keymap to list and switch between sessions
		vim.keymap.set("n", "<leader>sl", function()
			require("persisted").list()
		end, { desc = "[S]ession [L]ist" })
	end,
}
