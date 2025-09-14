-- ~/.config/nvim/lua/user/plugins/github.lua

return {
	"ldelossa/gh.nvim",
	-- lazy-load when the GH command is run
	cmd = {
		"GH",
		"GHLoad",
		"GHUnload",
	},
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("gh").setup()

		-- Keymaps
		vim.keymap.set("n", "<leader>pr", "<cmd>GH PR<cr>", { desc = "[P]ull [R]equest View" })
	end,
}
