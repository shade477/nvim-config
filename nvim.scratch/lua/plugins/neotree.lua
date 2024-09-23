return
 {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = 
      {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim",
      },
    config = function()

      local map = vim.keymap.set

      map('n', '<C-n>', ':Neotree filesystem reveal left toggle<CR>', { desc = "nvimtree toggle window" })
      map('n', '<leader>e', ':Neotree focus toggle<CR>', { desc = "nvimtree focus window" })
    end
  }

