require 'config.options'
--[[
  - https://learnxinyminutes.com/docs/lua/
 ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)
-- [[ Configure plugins ]]

require('lazy').setup {
  spec = {
    {
      'LazyVim/LazyVim',
      install = { colorscheme = { 'catppuccin' } },
    },
    { import = 'plugins' },
  },
}

require 'config.keymaps'
