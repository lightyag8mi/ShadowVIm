return {
  -- Mini.pairs: auto-close pairs.
  {
    'echasnovski/mini.nvim',
    event = 'InsertEnter',
    config = function()
      require('mini.pairs').setup()
    end,
  },

  -- Mini.comment: Commenting with `gc`.
  {
    'echasnovski/mini.nvim',
    keys = {
      { 'gc', mode = { 'n', 'v' } }, -- The key that triggers the load
    },
    config = function()
      require('mini.comment').setup({})
    end,
  },
  
  {
    'echasnovski/mini.nvim',
    keys = {
      { 's', mode = 'n' }, -- for sa, sd, sr
      { 's', mode = 'v' }, -- for surround visual selection
    },
    config = function()
      require('mini.surround').setup({})
      require('mini.notify').setup({
        timeout = 2000, -- Duration in milliseconds
        max_width = 60, -- Maximum width of the notification
        max_height = 10, -- Maximum height of the notification
      })
    end,
  },
}
