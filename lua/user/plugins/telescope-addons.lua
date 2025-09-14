-- ~/.config/nvim/lua/user/plugins/telescope-addons.lua (Updated)

return {
	"nvim-telescope/telescope-project.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	config = function()
		require("telescope").load_extension("project")
		vim.keymap.set("n", "<leader>fp", "<cmd>Telescope project<cr>", { desc = "[F]ind [P]rojects" }) -- Added desc
	end,
}
