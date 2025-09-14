-- Set the leader key BEFORE loading lazy
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load core settings
require("user.core.options")
require("user.core.keymaps")

-- Load plugins using lazy.nvim
-- This will automatically look for and load files in the `lua/user/plugins/` directory
require("lazy").setup("user.plugins")
