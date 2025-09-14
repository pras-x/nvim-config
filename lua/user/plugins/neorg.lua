-- ~/.config/nvim/lua/user/plugins/neorg.lua

return {
	"nvim-neorg/neorg",
	dependencies = { "nvim-lua/plenary.nvim" },
	ft = { "norg" }, -- lazy-load on .norg files for performance
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {}, -- Load default settings and mappings
				["core.concealer"] = {}, -- Hide syntax characters (e.g., *) for a cleaner look
				["core.dirman"] = { -- Manage workspaces and directories
					config = {
						workspaces = {
							-- Define a default workspace called 'notes'
							-- Neorg will look for it in ~/notes
							notes = "~/notes",
						},
						default_workspace = "notes",
					},
				},
			},
		})

		-- Set a keymap to quickly open your main notes index
		vim.keymap.set("n", "<leader>ni", ":Neorg index<CR>", { desc = "[N]eorg [I]ndex" })
	end,
}
