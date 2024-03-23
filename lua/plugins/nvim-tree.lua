return {
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup {
        sort = {
          sorter = 'case_sensitive',
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      }

      local api = require 'nvim-tree.api'

      -- Toggle file explorer
      vim.keymap.set('n', '<leader>e', api.tree.toggle, { desc = 'Toggle File [E]xplorer' })
    end,
  },
}
