-- ~/.config/nvim/lua/user/plugins/git.lua (Updated)

return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("neogit").setup({})
		vim.keymap.set("n", "<leader>gg", function()
			require("neogit").open()
		end, { desc = "Open Neo[g]it" }) -- Added desc
	end,
}
