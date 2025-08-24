return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufReadPost', 'BufNewFile' },
  build = ':TSUpdate',
  config = function()
    local configs = require('nvim-treesitter.configs')
    
    configs.setup({
      ensure_installed = { 'lua', 'vim', 'vimdoc' }, -- Minimal set
      sync_install = false,
      auto_install = false, -- Disable auto-install to prevent errors
      
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      
      -- Disable features that might cause issues
      indent = { enable = false },
      incremental_selection = { enable = false },
      textobjects = { enable = false },
    })
  end,
}