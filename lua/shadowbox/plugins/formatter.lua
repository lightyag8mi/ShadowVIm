-- ~/.config/nvim/lua/plugins/formatter.lua

return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' }, -- Run on save
  cmd = { 'ConformInfo' },
  config = function()
    require('conform').setup({
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'isort', 'black' },
        go = { 'gofmt' },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })
  end,
}
