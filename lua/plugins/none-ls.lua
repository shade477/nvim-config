-- return
-- {
--   {
--     "nvimtools/none-ls.nvim",
--     config = function()
--       local null_ls = require("null-ls")
--       local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
--       null_ls.setup({
--         sources = {
--           null_ls.builtins.formatting.stylua,
--           null_ls.builtins.formatting.black,
--           null_ls.builtins.formatting.isort,
--           null_ls.builtins.formatting.gofmts,
--           null_ls.builtins.formatting.goimports_reviser,
--           null_ls.builtins.formatting.golines,
--         }
--       },
--       on_attach = function (client, bufnr)
--           if client.supports_method("textDocuments/formatting") then
--             vim.api.nvim_clear_autocmds({
--             group = augroup,
--             buffer = bufnr
--           })
--           vim.api.nvim_create_autocmd("BufWritePre", {
--             group = augroup,
--             buffer = bufnr,
--             callback = function ()
--               vim.lsp.buf.format({ bufnr = bufnr })
--             end,
--           })
--           end
--       end
--       )
--
--       vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
--     end
--   }
-- }

return {
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.black,
          null_ls.builtins.formatting.isort,
          null_ls.builtins.formatting.gofmt,
          null_ls.builtins.formatting.goimports_reviser,
          null_ls.builtins.formatting.golines,
        },
        on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({ bufnr = bufnr })
              end,
            })
          end
        end,
      })

      -- Use vim.keymap.set for key mappings
      vim.keymap.set('n', '<leader>gf', function() vim.lsp.buf.format({ async = true }) end, {})
    end,
  }
}

