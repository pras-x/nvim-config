-- ~/.config/nvim/lua/user/plugins/telescope.lua (Updated)

return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind by [G]rep" })
		-- NEW: Keymap for finding open buffers
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[F]ind open [B]uffers" })
	end,
} -- ~/.config/nvim/lua/user/plugins/telescope.lua (Updated)
