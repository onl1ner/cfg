return {
	"nvim-telescope/telescope.nvim", 
	tag = "0.1.6",
	dependencies = { 
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-live-grep-args.nvim"
    },
    config = function()
        local telescope = require("telescope")
        local telescope_actions = require("telescope.actions")

        telescope.setup {
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-j>"] = telescope_actions.move_selection_next,
                        ["<C-k>"] = telescope_actions.move_selection_previous,
                    },
                },
            }
        }

        local builtin = require('telescope.builtin')

        vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
        vim.keymap.set("n", "<leader>fs", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", {})
        vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
        vim.keymap.set("n", "<leader>fp", "<cmd>Telescope neovim-project history<CR>", {})

        telescope.load_extension("live_grep_args")
    end,
}
