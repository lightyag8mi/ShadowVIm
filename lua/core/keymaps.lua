-- Define keymap variable
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

-- Open file explorer (<Space>e)
keymap.set('n', '<leader>e', ':lua MiniFiles.open()<CR>', { desc = 'Open File Explorer' })

-- Toggle Zen Mode
keymap.set('n', '<leader>z', ':lua Snacks.zen()<CR>', { desc = 'Toggle Zen Mode' })

-- Open Dashboard
keymap.set('n', '<leader>d', ':lua Snacks.dashboard()<CR>', { desc = 'Open Dashboard' })

-- Open Snacks floating terminal
keymap.set('n', '<leader>t', ':lua Snacks.terminal()<CR>', { desc = 'Open Floating Terminal' })

-- Command Key Remap
keymap.set('n', ';', ':', { desc = 'Enter command mode' })

-- Insert Mode Navigation
keymap.set('i', '<C-b>', '<ESC>^i', { desc = 'Move to beginning of line' })
keymap.set('i', '<C-e>', '<End>', { desc = 'Move to end of line' })
keymap.set('i', '<C-l>', '<Left>', { desc = 'Move left' })
keymap.set('i', '<C-r>', '<Right>', { desc = 'Move right' })
keymap.set('i', '<C-d>', '<Down>', { desc = 'Move down' })
keymap.set('i', '<C-u>', '<Up>', { desc = 'Move up' })

-- MiniSurround (renamed prefixes to avoid overlap)
keymap.set('n', '<msr>', 'Replace surrounding', {})
keymap.set('n', '<msrn>', 'Replace next surrounding', {})
keymap.set('n', '<msrl>', 'Replace previous surrounding', {})

-- Find
keymap.set('n', '<msf>', 'Find right surrounding', {})
keymap.set('n', '<msfn>', 'Find next right surrounding', {})
keymap.set('n', '<msfl>', 'Find previous right surrounding', {})

-- Find Left
keymap.set('n', '<msF>', 'Find left surrounding', {})
keymap.set('n', '<msFn>', 'Find next left surrounding', {})
keymap.set('n', '<msFl>', 'Find previous left surrounding', {})

-- Highlight
keymap.set('n', '<msh>', 'Highlight surrounding', {})
keymap.set('n', '<mshn>', 'Highlight next surrounding', {})
keymap.set('n', '<mshl>', 'Highlight previous surrounding', {})

-- Delete
keymap.set('n', '<msd>', 'Delete surrounding', {})
keymap.set('n', '<msdn>', 'Delete next surrounding', {})
keymap.set('n', '<msdl>', 'Delete previous surrounding', {})

-- Buffer Navigation
keymap.set('n', '<S-Tab>', 'select_and_next', { desc = 'Select and next' })
keymap.set('n', '<C-p>', ':bprevious<CR>', { desc = 'Previous buffer' })
keymap.set('n', '<C-n>', ':bnext<CR>', { desc = 'Next buffer' })
