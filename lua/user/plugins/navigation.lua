-- ~/.config/nvim/lua/user/plugins/navigation.lua

return {
  -- Hyper-fast cursor movement
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    opts = {},
    -- Add keymaps to use Flash that are easy to remember
    keys = {
      { 's', mode = { 'n', 'x', 'o' }, function() require('flash').jump() end,       desc = 'Flash Jump' },
      { 'S', mode = { 'n', 'o', 'x' }, function() require('flash').treesitter() end, desc = 'Flash Treesitter' },
    },
  },
}
