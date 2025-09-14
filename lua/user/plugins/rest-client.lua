-- ~/.config/nvim/lua/user/plugins/rest-client.lua

return {
	"rest-nvim/rest.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("rest-nvim").setup({
			-- Leave empty for default setup
		})

		-- Keymaps
		vim.keymap.set("n", "<leader>rh", "<cmd>Rest run<cr>", { desc = "[R]un [H]TTP Request" })
	end,
}
