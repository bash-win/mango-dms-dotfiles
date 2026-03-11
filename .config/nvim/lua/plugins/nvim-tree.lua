return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    renderer = {
      icons = {
        show = {
          file = false,
          folder = false,
          folder_arrow = true,
          git = true,
        },
      },
    },
    view = {
      width = 25,
      side = "left",
    },
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_cwd = true,
    update_focused_file = {
      enable = true,
      update_cwd = true,
      update_root = true,
    },
  },

  config = function(_, opts)
    require("nvim-tree").setup(opts)
    local api = require("nvim-tree.api")
    vim.keymap.set("n", "<leader>t", api.tree.toggle, { noremap = true, silent = true })
    vim.keymap.set("n", "<C-n>", api.tree.focus, { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>r", api.tree.find_file, { noremap = true, silent = true })
  end,
}

