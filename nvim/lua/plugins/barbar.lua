return {
    'romgrk/barbar.nvim',
    config = function()
        vim.keymap.set('n', '<leader>tl', '<Cmd>BufferNext<CR>', {})
        vim.keymap.set('n', '<leader>th', '<Cmd>BufferPrevious<CR>', {})
        vim.keymap.set('n', '<leader>tx', '<Cmd>BufferClose<CR>', {})
    end,
    version = '^1.0.0'
}
