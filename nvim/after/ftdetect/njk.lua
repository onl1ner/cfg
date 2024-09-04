vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = "*.njk",
    callback = function()
        vim.bo.filetype = 'html'
    end
})
