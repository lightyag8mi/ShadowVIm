return {
  'williamboman/mason.nvim',
  cmd = 'Mason',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    -- Configure mason
    require('mason').setup({
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    })

    local mason_lspconfig = require('mason-lspconfig')

    mason_lspconfig.setup({
      ensure_installed = {
        'lua_ls',
        'cssls',
        'html',
        'tsserver',
        'pyright',
        'bashls',
        'jsonls',
      },
    })

    mason_lspconfig.setup_handlers({
      function(server_name)
        require('lspconfig')[server_name].setup({
        })
      end,
    })
  end,
}
