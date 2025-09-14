-- ~/.config/nvim/lua/user/plugins/database.lua

return {
	{
		"tpope/vim-dadbod",
		dependencies = {
			-- UI for vim-dadbod
			"kristijanhusak/vim-dadbod-ui",
			-- Autocompletion for vim-dadbod
			"kristijanhusak/vim-dadbod-completion",
		},
		config = function()
			-- Set a keymap to open the database UI
			vim.keymap.set("n", "<leader>db", "<cmd>DBUIToggle<cr>", { desc = "Toggle [D]ata[b]ase UI" })
		end,
	},
}
