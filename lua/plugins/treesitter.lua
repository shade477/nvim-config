return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",  -- Automatically updates parsers
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      -- Automatically install missing parsers
      auto_install = true,

      -- Enable syntax highlighting
      highlight = {
        enable = true,       -- Enable Treesitter-based syntax highlighting
        additional_vim_regex_highlighting = false,  -- Disable Vim's built-in regex-based highlighting
      },

      -- Enable Treesitter-based indentation
      indent = {
        enable = true,
      },

      -- You can add other configurations here, like:
      -- ensure_installed = { "go", "lua", "python" },  -- Ensure these languages' parsers are always installed
    })
  end
}
