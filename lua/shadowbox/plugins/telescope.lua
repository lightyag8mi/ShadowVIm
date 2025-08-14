return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  cmd = { 'Telescope', 'ShadowVimTheme' },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },

  config = function()
    local keymap = vim.keymap
    keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Find Files' })
    keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Live Grep' })
    keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Find Buffers' })
    keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Help Tags' })
  end,
}
