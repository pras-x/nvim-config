-- This file already used `desc` for its keymaps, but let's make them more consistent.
return {
	-- Debug Adapter Protocol
	"mfussenegger/nvim-dap",
	dependencies = {
		-- UI for DAP
		{
			"rcarriga/nvim-dap-ui",
			dependencies = { "nvim-neotest/nvim-nio" },
			config = function()
				local dapui = require("dapui")
				dapui.setup()
				local dap = require("dap")
				dap.listeners.after.event_initialized["dapui_config"] = function()
					dapui.open()
				end
				dap.listeners.before.event_terminated["dapui_config"] = function()
					dapui.close()
				end
				dap.listeners.before.event_exited["dapui_config"] = function()
					dapui.close()
				end
			end,
		},
		-- Automatically install debug adapters
		{
			"williamboman/mason.nvim",
			dependencies = { "jay-babu/mason-nvim-dap.nvim" },
			config = function()
				require("mason").setup()
				require("mason-nvim-dap").setup({
					ensure_installed = { "python", "go" },
					automatic_installation = true,
				})
			end,
		},
	},
	config = function()
		vim.keymap.set("n", "<F5>", function()
			require("dap").continue()
		end, { desc = "Debug: Continue" })
		vim.keymap.set("n", "<F10>", function()
			require("dap").step_over()
		end, { desc = "Debug: Step Over" })
		vim.keymap.set("n", "<F11>", function()
			require("dap").step_into()
		end, { desc = "Debug: Step Into" })
		vim.keymap.set("n", "<F12>", function()
			require("dap").step_out()
		end, { desc = "Debug: Step Out" })
		vim.keymap.set("n", "<leader>b", function()
			require("dap").toggle_breakpoint()
		end, { desc = "Debug: Toggle [B]reakpoint" }) -- Updated desc
		vim.keymap.set("n", "<leader>B", function()
			require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
		end, { desc = "Debug: Set Conditional [B]reakpoint" }) -- Updated desc
	end,
}
