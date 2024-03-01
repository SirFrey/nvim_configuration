vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.autoformat = false

-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
-- Set highlight on search
vim.o.hlsearch = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")


vim.opt.updatetime = 50
-- Make line numbers default
vim.wo.number = true

-- Relative numbers
vim.wo.relativenumber = true
-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You jshould make sure your terminal supports this
vim.o.termguicolors = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 2
-- vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.cursorline = false

vim.opt.signcolumn = "yes"
