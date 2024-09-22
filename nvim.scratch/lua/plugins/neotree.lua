return
 {
    "nvim-tree/nvim-tree.lua",
    dependencies = 
      {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim",
      },
    config = function()

      local map = vim.keymap.set

      map('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', { desc = "nvimtree toggle window" })
      map('n', '<leader>e', '<cmd>NvimTreeFocus<CR>', { desc = "nvimtree focus window" })
    end
  }

