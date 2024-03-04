return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { '', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { '', '', '' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
    }
  end,
}