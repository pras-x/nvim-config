-- ~/.config/nvim/lua/user/plugins/testing.lua (Updated)

return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/neotest-go",
		"nvim-neotest/neotest-python",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-go"),
				require("neotest-python")({ dap = { justMyCode = false } }),
			},
		})
		vim.keymap.set("n", "<leader>tf", function()
			require("neotest").run.run(vim.fn.expand("%"))
		end, { desc = "[T]est [F]ile" }) -- Added desc
		vim.keymap.set("n", "<leader>tn", function()
			require("neotest").run.run()
		end, { desc = "[T]est [N]earest" }) -- Added desc
		vim.keymap.set("n", "<leader>ts", function()
			require("neotest").summary.toggle()
		end, { desc = "[T]est [S]ummary" }) -- Added desc
		vim.keymap.set("n", "<leader>to", function()
			require("neotest").output.open({ enter = true })
		end, { desc = "[T]est [O]utput" }) -- Added desc
	end,
}
