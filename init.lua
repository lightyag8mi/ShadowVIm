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

local function load_user_config()
  local status, err = pcall(require, "shadowbox.shadowlily")
  if status then
    vim.notify("ShadowVim: Loaded user configuration", vim.log.levels.INFO)
    return true
  else
    vim.notify("ShadowVim: Using default configuration", vim.log.levels.WARN)
    return false
  end
end

if not load_user_config() then
  -- Load defaults
  require("core.options")
  require("core.keymaps")
  require("lazy").setup("plugins")
end
