vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.api.nvim_create_autocmd("DirChanged", {
    group = vim.api.nvim_create_augroup("open-oil-explorer", { clear = true }),
    callback = function()
        vim.schedule_wrap(require("oil").open)(vim.v.event.cwd)
    end
})
