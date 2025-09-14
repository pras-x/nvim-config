-- ~/.config/nvim/lua/user/plugins/terminal.lua (Upgraded with Internal Error Parsing)

return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		open_mapping = [[<c-\>]],
		direction = "float",
	},
	config = function()
		vim.keymap.set("n", "<leader>vt", ":ToggleTerm direction=vertical<CR>", { desc = "[V]ertical [T]erminal" })
		vim.keymap.set("n", "<leader>qo", "<cmd>copen<cr>", { desc = "[Q]uickfix [O]pen" })

		-- This is the new, upgraded smart runner function
		local function run_code()
			local filetype = vim.bo.filetype
			local source_file = vim.fn.expand("%")
			local executable = vim.fn.expand("%:r")

			local compile_cmd, run_cmd
			if filetype == "c" then
				compile_cmd = "gcc -g -Wall " .. source_file .. " -o " .. executable
				run_cmd = "./" .. executable
			elseif filetype == "cpp" then
				compile_cmd = "g++ -g -Wall " .. source_file .. " -o " .. executable
				run_cmd = "./" .. executable
			elseif filetype == "python" then
				run_cmd = "python3 " .. source_file
			-- Add other interpreted languages here
			else
				print("Error: No run command configured for filetype: " .. filetype)
				return
			end

			-- For compiled languages, we compile first and check for errors
			if compile_cmd then
				-- Run the compilation command and capture the output
				local errors = vim.fn.systemlist(compile_cmd)

				-- vim.v.shell_error is non-zero if the last command failed
				if vim.v.shell_error ~= 0 then
					print("Compilation failed. See quickfix list for errors.")
					-- Parse and populate the quickfix list
					vim.fn.setqflist({}, "r", { title = "Compiler Errors", lines = errors })
					vim.cmd("copen") -- Open the quickfix window
					return -- Stop execution
				end
			end

			-- If compilation was successful (or not needed), run the code
			local Terminal = require("toggleterm.terminal").Terminal
			local term = Terminal:new({ cmd = run_cmd, direction = "float", close_on_exit = false })
			term:toggle()
		end

		vim.keymap.set("n", "<leader>rc", run_code, { desc = "[R]un [C]ode" })
	end,
}
