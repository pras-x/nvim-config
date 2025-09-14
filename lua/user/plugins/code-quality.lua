-- ~/.config/nvim/lua/user/plugins/code-quality.lua

return {
  -- Auto-formatting
  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    opts = {
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'black' },
        go = { 'gofmt' },
        javascript = { 'prettierd' },
        typescript = { 'prettierd' },
        html = { 'prettierd' },
        css = { 'prettierd' },
        json = { 'prettierd' },
      },
      -- This will format on save
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },
  },

  -- Real-time linting
  {
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require('lint')
      lint.linters_by_ft = {
        lua = { 'selene' },
        python = { 'ruff' },
        go = { 'golangci-lint' },
        javascript = { 'eslint_d' },
        typescript = { 'eslint_d' },
      }

      -- Automatically run linting on text change and save
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = vim.api.nvim_create_augroup('lint', { clear = true }),
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
}
