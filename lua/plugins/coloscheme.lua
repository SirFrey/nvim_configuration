return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon", transparent = true, styles = { sidebars = "transparent", floats = "transparent" } }
  },

  {
    "xiyaowong/transparent.nvim",
    config = function()
      require('transparent').clear_prefix('NeoTree')
      require('transparent').clear_prefix('BufferLine')
      require("transparent").setup({ -- Optional, you don't have to run setup.
        groups = {                   -- table: default groups
          'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
          'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
          'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
          'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
          'EndOfBuffer',
        },
        extra_groups = {},   -- table: additional groups that should be cleared
        exclude_groups = {}, -- table: groups you don't want to clear
      })
    end
  }
}
