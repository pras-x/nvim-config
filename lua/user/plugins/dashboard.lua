-- ~/.config/nvim/lua/user/plugins/dashboard.lua (with dashboard-nvim)

return {
  'glepnir/dashboard-nvim',
  event = 'VimEnter', -- Load the dashboard when Neovim starts
  config = function()
    local db = require('dashboard')

    -- Set the dashboard theme
    db.setup({
      theme = 'doom', -- Other themes include 'hyper', 'doom', 'boxed'

      -- Configure the dashboard content
      config = {
        -- Header with ASCII art
        header = {
          '███╗   ██╗███████╗ ██╗   ██╗██╗   ██╗██╗████████╗',
          '████╗  ██║██╔════╝ ██║   ██║██║   ██║██║╚══██╔══╝',
          '██╔██╗ ██║█████╗   ██║   ██║██║   ██║██║   ██║   ',
          '██║╚██╗██║██╔══╝   ██║   ██║██║   ██║██║   ██║   ',
          '██║ ╚████║███████╗ ╚██████╔╝╚██████╔╝██║   ██║   ',
          '╚═╝  ╚═══╝╚══════╝  ╚═════╝  ╚═════╝ ╚═╝   ╚═╝   ',
        },
        -- Center section with shortcut buttons
        center = {
          {
            icon = ' ',
            desc = 'New file',
            key = 'e',
            action = 'ene | startinsert',
          },
          {
            icon = ' ',
            desc = 'Find file',
            key = 'f',
            action = 'Telescope find_files',
          },
          {
            icon = ' ',
            desc = 'Recent files',
            key = 'r',
            action = 'Telescope oldfiles',
          },
          {
            icon = 'grep ',
            desc = 'Find text',
            key = 'g',
            action = 'Telescope live_grep',
          },
        },
        -- Footer
        footer = { '✨ Happy Coding ✨' },
      },
    })
  end,
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- For file icons
}
