return {
  'stevearc/conform.nvim',
  cmd = 'ConformInfo',
  keys = {
    {
      '<leader>cF',
      function()
        require('conform').format { formatters = { 'injected' } }
      end,
      mode = { 'n', 'v' },
      desc = 'Format Injected Langs',
    },
  },
  opts = {
    formatters_by_ft = {
      ['javascript'] = { 'prettierd' },
      ['javascriptreact'] = { 'prettierd' },
      ['typescript'] = { 'prettierd' },
      ['typescriptreact'] = { 'prettierd' },
      ['vue'] = { 'prettierd' },
      ['css'] = { 'prettierd' },
      ['scss'] = { 'prettierd' },
      ['less'] = { 'prettierd' },
      ['html'] = { 'prettierd' },
      ['json'] = { 'prettierd' },
      ['jsonc'] = { 'prettierd' },
      ['yaml'] = { 'prettierd' },
      ['markdown'] = { 'prettierd' },
      ['markdown.mdx'] = { 'prettierd' },
      ['graphql'] = { 'prettierd' },
      ['handlebars'] = { 'prettierd' },
      lua = { 'stylua' },
    },
  },
}
