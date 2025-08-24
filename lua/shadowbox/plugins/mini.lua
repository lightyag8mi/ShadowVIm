-- Replace your lua/shadowbox/plugins/mini.lua with this fixed version
return {
  -- Mini.pairs: auto-close pairs
  {
    'echasnovski/mini.pairs',
    event = 'InsertEnter',
    config = function()
      require('mini.pairs').setup()
    end,
  },

  -- Mini.comment: Commenting with `gc`
  {
    'echasnovski/mini.comment',
    keys = {
      { 'gc', mode = { 'n', 'v' } },
    },
    config = function()
      require('mini.comment').setup({})
    end,
  },
  
  -- Mini.surround
  {
    'echasnovski/mini.surround',
    keys = {
      { 'sa', mode = 'n' },
      { 'sd', mode = 'n' },
      { 'sr', mode = 'n' },
      { 'sa', mode = 'v' },
    },
    config = function()
      require('mini.surround').setup({})
    end,
  },

  -- Mini.files: DISABLED (using Snacks explorer instead)
  --[[
  {
    'echasnovski/mini.files',
    enabled = false, -- Disabled to avoid conflicts with Snacks explorer
  },
  --]]

  -- Mini.notify
  {
    'echasnovski/mini.notify',
    config = function()
      require('mini.notify').setup({
        timeout = 2000,
        max_width = 60,
        max_height = 10,
      })
    end,
  },
}