return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2", -- make sure the branch exists or remove if not needed
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local harpoon_mark = require("harpoon.mark")
            local harpoon_ui = require("harpoon.ui")

            require("harpoon").setup({
                global_settings = {
                    save_on_toggle = true,
                    save_on_change = true,
                    enter_on_sendcmd = true,
                    tmux_autoclose_windows = false,
                    excluded_filetypes = { "harpoon" },
                },
            })

            -- Key mappings for Harpoon
            vim.keymap.set("n", "<leader>a", function() harpoon_mark.add_file() end, { desc = "Harpoon Add File" })
            vim.keymap.set("n", "<C-e>", function() harpoon_ui.toggle_quick_menu() end, { desc = "Harpoon Toggle Quick Menu" })
        end,
    },
}
