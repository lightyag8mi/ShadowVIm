local opt = vim.opt

-- Performance and UI
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.laststatus = 3       -- Global statusline
opt.showmode = false     -- Don't show mode in command line (we use the statusline)
opt.undofile = true      -- Persist undo history
opt.swapfile = false     -- We don't need swap files

-- Line Numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- Search
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Appearance
opt.wrap = false
opt.scrolloff = 8 -- Keep 8 lines visible above/below cursor
opt.sidescrolloff = 8
opt.signcolumn = 'yes' -- Always show the sign column

-- Better splits
opt.splitright = true
opt.splitbelow = true

