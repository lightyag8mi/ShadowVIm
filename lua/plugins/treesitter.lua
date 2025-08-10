return {
  'nvim-treesitter/nvim-treesitter',
  -- ++ ADDED: These events ensure treesitter only loads when a file buffer
  -- is actually created or read, not on the initial dashboard.
  event = { 'BufReadPre', 'BufNewFile' },
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { 'lua', 'vim', 'python', 'javascript', 'typescript', 'html', 'css', 'go' }, -- Added more common languages
      highlight = {
        enable = true,
      },
    })
  end,
}
