-- ~/.config/nvim/init.lua

-- This sets leader key before anything else
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- This tells Lazy to find every .lua file inside `lua/plugins/`
require('lazy').setup('plugins')
-- It's good practice to load core options and keymaps after the plugin manager is set up.
require('core.options')
require('core.keymaps')
