return {
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      local function my_on_attach(bufnr)
        local api = require 'nvim-tree.api'

        local function opts(desc)
          return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        -- custom mappings
        -- Toggle file explorer
        vim.keymap.set('n', '<leader>e', api.tree.toggle, { desc = 'Toggle File [E]xplorer' })
        vim.keymap.set('n', 'v', api.node.open.vertical, opts 'Open file Vertically')
      end

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
        on_attach = my_on_attach,
      }
    end,
  },
}
