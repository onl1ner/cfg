return {
    'stevearc/oil.nvim',
    dependencies = { 
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require('oil').setup {
            default_file_explorer = true,
            view_options = {
                show_hidden = true,
            },
            keymaps = {
                ["<C-v>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
            },
        }

        vim.keymap.set("n", "<leader>e", "<cmd>Oil<cr>")
    end
}
