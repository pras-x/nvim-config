-- ~/.config/nvim/lua/user/plugins/editing-helpers.lua

return {
  -- Universal commenting
  {
    'numToStr/Comment.nvim',
    opts = {},
  },

  -- Auto-closing and pairing of brackets, quotes, etc.
  {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup({})
    end,
  },

  -- Effortlessly change, add, or delete surrounding characters
  {
    'kylechui/nvim-surround',
    version = '*', -- Use latest stable release
    opts = {},
  },

  -- Automatically rename closing HTML/XML tags
  {
    'windwp/nvim-ts-autotag',
    opts = {},
  },
}
