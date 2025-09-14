-- Set options
vim.opt.number = true         -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.cursorline = true     -- Highlight the current line
vim.opt.mouse = 'a'           -- Enable mouse support

-- Tab / Indentation
vim.opt.tabstop = 4           -- Number of spaces a tab counts for
vim.opt.softtabstop = 4       -- Number of spaces to insert when tab is pressed
vim.opt.shiftwidth = 4        -- Width for auto-indentation
vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.autoindent = true     -- Copy indent from current line when starting a new one
vim.opt.smartindent = true    -- Be smart about indentation

-- Search
vim.opt.incsearch = true      -- Show search results as you type
vim.opt.hlsearch = true       -- Highlight all search results
vim.opt.ignorecase = true     -- Ignore case in search
vim.opt.smartcase = true      -- But don't ignore case if the search query has uppercase letters

-- Appearance
vim.opt.termguicolors = true  -- Enable 24-bit RGB colors
vim.opt.scrolloff = 8         -- Keep 8 lines of context around the cursor

-- Other
vim.opt.swapfile = false      -- Don't create swap files
vim.opt.backup = false        -- Don't create backup files
vim.opt.undofile = true       -- Enable persistent undo
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.splitright = true     -- New vertical splits open to the right
vim.opt.splitbelow = true     -- New horizontal splits open below
vim.opt.updatetime = 250      -- Decrease update time
