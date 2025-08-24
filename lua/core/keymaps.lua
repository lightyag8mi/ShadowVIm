-- Replace your lua/shadowbox/core/keymaps.lua with this fixed version
local keymap = vim.keymap

-- General Keymaps
keymap.set('n', '<c-h>', '<C-w><C-h>', { desc = 'Move to left window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move to lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move to upper window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move to right window' })

-- Resize Windows With arrow keys
keymap.set('n', '<C-Up>', ':resize -2<CR>', { desc = 'Resize window smaller vertically' })
keymap.set('n', '<C-Down>', ':resize +2<CR>', { desc = 'Resize window larger vertically' })
keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { desc = 'Resize window smaller horizontally' })
keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { desc = 'Resize window larger horizontally' })

-- Close current buffer
keymap.set('n', '<leader>q', ':bdelete<CR>', { desc = 'Close current buffer' })
keymap.set('n', '<leader>Q', ':bdelete!<CR>', { desc = 'Force close current buffer' })

-- Open file explorer (using Snacks explorer)
keymap.set('n', '<leader>e', function()
  require('snacks').explorer()
end, { desc = 'Open File Explorer' })

-- Toggle Zen Mode
keymap.set('n', '<leader>z', function()
  require('snacks').zen()
end, { desc = 'Toggle Zen Mode' })

-- Open Dashboard
keymap.set('n', '<leader>d', function()
  require('snacks').dashboard()
end, { desc = 'Open Dashboard' })

-- Open Snacks floating terminal
keymap.set('n', '<leader>t', function()
  require('snacks').terminal()
end, { desc = 'Open Floating Terminal' })

-- Command Key Remap
keymap.set('n', ';', ':', { desc = 'Enter command mode' })

-- Insert Mode Navigation
keymap.set('i', '<C-b>', '<ESC>^i', { desc = 'Move to beginning of line' })
keymap.set('i', '<C-e>', '<End>', { desc = 'Move to end of line' })

-- Buffer Navigation
keymap.set('n', '<C-p>', ':bprevious<CR>', { desc = 'Previous buffer' })
keymap.set('n', '<C-n>', ':bnext<CR>', { desc = 'Next buffer' })