return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    -- init = function()
    --   vim.cmd.colorscheme 'catppuccin-mocha'
    -- end,
    config = function()
      require('catppuccin').setup {
        styles = {
          comments = {},
          conditionals = {},
        },
      }
    end,
  },
}
