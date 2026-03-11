return {
  {'romgrk/barbar.nvim',
    lazy = false,
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- animation = true,
      -- insert_at_start = true,
    },
    version = '^1.0.0',
    keys = {
      -- Navigate buffers
      { '<C-h>', '<Cmd>BufferPrevious<CR>',            desc = 'Previous buffer' },
      { '<C-l>', '<Cmd>BufferNext<CR>',                desc = 'Next buffer' },

      -- Re-order buffers
      { '<C-,>', '<Cmd>BufferMovePrevious<CR>',        desc = 'Move buffer left' },
      { '<C-.>', '<Cmd>BufferMoveNext<CR>',            desc = 'Move buffer right' },

      -- Jump to specific buffer
      { '<leader>b1', '<Cmd>BufferGoto 1<CR>',         desc = 'Buffer 1' },
      { '<leader>b2', '<Cmd>BufferGoto 2<CR>',         desc = 'Buffer 2' },
      { '<leader>b3', '<Cmd>BufferGoto 3<CR>',         desc = 'Buffer 3' },
      { '<leader>b4', '<Cmd>BufferGoto 4<CR>',         desc = 'Buffer 4' },
      { '<leader>b5', '<Cmd>BufferGoto 5<CR>',         desc = 'Buffer 5' },
      { '<leader>b6', '<Cmd>BufferGoto 6<CR>',         desc = 'Buffer 6' },
      { '<leader>b7', '<Cmd>BufferGoto 7<CR>',         desc = 'Buffer 7' },
      { '<leader>b8', '<Cmd>BufferGoto 8<CR>',         desc = 'Buffer 8' },
      { '<leader>b9', '<Cmd>BufferGoto 9<CR>',         desc = 'Buffer 9' },
      { '<leader>b0', '<Cmd>BufferLast<CR>',           desc = 'Last buffer' },

      -- Close buffers
      { '<leader>bc', '<Cmd>BufferClose<CR>',          desc = 'Close buffer' },
      { '<leader>bC', '<Cmd>BufferCloseAllButCurrent<CR>', desc = 'Close all but current' },
      { '<leader>bl', '<Cmd>BufferCloseBuffersLeft<CR>',  desc = 'Close buffers to the left' },
      { '<leader>br', '<Cmd>BufferCloseBuffersRight<CR>', desc = 'Close buffers to the right' },

      -- Pin buffer
      { '<leader>bp', '<Cmd>BufferPin<CR>',            desc = 'Pin/unpin buffer' },

      -- Pick buffer
      { '<leader>bb', '<Cmd>BufferPick<CR>',           desc = 'Pick buffer' },
    },
  },
}
