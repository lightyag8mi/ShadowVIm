-- shadowlily.lua

-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Core config
require("shadowbox.core.options")
require("shadowbox.core.keymaps")

-- User's plugins (can be default or modified)
require("lazy").setup("shadowbox.plugins")