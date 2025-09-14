-- ~/.config/nvim/lua/user/plugins/file-explorer.lua

return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- for file icons
	config = function()
		require("oil").setup({
			-- Oil will take over file tree buffers.
			-- This means if you run `:edit .` or `:edit some/dir/`, Oil will open.
			default_file_explorer = true,
		})

		-- A keymap to quickly open the parent directory
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	end,
}
