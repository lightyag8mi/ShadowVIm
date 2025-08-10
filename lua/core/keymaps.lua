
-- Define keymap variable
local keymap = vim.keymap

-- General Keymaps
keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move to left window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move to lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move to upper window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move to right window' })

-- Resize windows with arrow keys
keymap.set('n', '<C-Up>', ':resize -2<CR>', { desc = 'Resize window smaller vertically' })
keymap.set('n', '<C-Down>', ':resize +2<CR>', { desc = 'Resize window larger vertically' })
keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { desc = 'Resize window smaller horizontally' })
keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { desc = 'Resize window larger horizontally' })

-- Close current buffer 
keymap.set('n', '<leader>q', ':bdelete<CR>', { desc = 'Close current buffer' })

-- Open file explorer (<Space>e)
keymap.set('n', '<leader>e', ':lua Snacks.explorer.open()<CR>', { desc = 'Open File Explorer' })

-- Toggle Zen Mode (distraction-free)
keymap.set('n', '<leader>z', ':lua Snacks.zen()<CR>', { desc = 'Toggle Zen Mode' })

-- Open Dashboard
keymap.set('n', '<leader>d', ':lua Snacks.dashboard()<CR>', { desc = 'Open Dashboard' })

-- Open Snacks floating terminal
keymap.set('n', '<leader>`', ':lua Snacks.terminal()<CR>', { desc = 'Open Floating Terminal' })

-- Copilot Keymaps
keymap.set('i', '<Tab>a', '<Plug>(copilot-accept-line)', { desc = 'Copilot: Accept Suggestion' })
keymap.set('i', '<Tab>r', '<Plug>(copilot-dismiss)', { desc = 'Copilot: Reject Suggestion' })

-- Command Key Remap
keymap.set('n', ';', ':', { desc = 'Enter command mode' })

-- Insert Mode Navigation
keymap.set('i', '<C-b>', '<ESC>^i', { desc = 'Move to beginning of line' })
keymap.set('i', '<C-e>', '<End>', { desc = 'Move to end of line' })
keymap.set('i', '<C-h>', '<Left>', { desc = 'Move left' })
keymap.set('i', '<C-l>', '<Right>', { desc = 'Move right' })
keymap.set('i', '<C-j>', '<Down>', { desc = 'Move down' })
keymap.set('i', '<C-k>', '<Up>', { desc = 'Move up' })
