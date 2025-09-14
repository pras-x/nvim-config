-- ~/.config/nvim/lua/user/plugins/treesitter.lua (Corrected)

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			-- We only need "norg" here. "norg_meta" has been removed.
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"javascript",
				"html",
				"python",
				"go",
				"norg",
			},
			sync_install = false,
			auto_install = true,
			highlight = { enable = true },
			rainbow = {
				enable = true,
			},
		})
	end,
}
