return {
    "nanozuki/tabby.nvim",
    config = function()
        require("tabby").setup {
            preset = "active_wins_at_tail"
        }

        vim.api.nvim_set_keymap("n", "<leader>ta", ":$tabnew<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>tc", ":tabclose<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>tn", ":tabn<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>tp", ":tabp<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>tmp", ":-tabmove<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>tmn", ":+tabmove<CR>", { noremap = true })
    end
}
