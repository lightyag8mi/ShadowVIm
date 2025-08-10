return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'hrsh7th/cmp-nvim-lsp',
    { 'folke/neodev.nvim', opts = {} },
  },
  config = function()
    -- This now works because cmp-nvim-lsp is a dependency
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    local on_attach = function(client, bufnr)
      local keymap = vim.keymap
      local opts = { buffer = bufnr, noremap = true, silent = true }

      keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      keymap.set('n', 'K', vim.lsp.buf.hover, opts)
      keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
      keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
      keymap.set('n', 'gr', vim.lsp.buf.references, opts)
      keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
      keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
      keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
    end

    local lspconfig = require('lspconfig')
    local signs = { Error = " ", Warn = " ", Hint = "󰌵 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
    
    local original_setup = lspconfig.util.default_config.setup
    lspconfig.util.default_config.setup = function(config)
      config.on_attach = on_attach
      config.capabilities = capabilities
      original_setup(config)
    end
  end,
}
