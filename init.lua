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
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- [[ Configure plugins ]]
require('lazy').setup {
  spec = {
    {
      'LazyVim/LazyVim',
      install = { colorscheme = { 'catppuccin', 'tokyonight', 'habamax' } },
    },
    { import = 'plugins' },
  },
}
require 'config.keymaps'

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- require('config.lsp')
vim.cmd 'autocmd BufRead,BufNewFile *.mdx set filetype=mdx'
