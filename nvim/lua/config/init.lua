require("config.set")
require("config.remap")
require("config.autocmd")

local pipepath = vim.fn.stdpath("cache") .. "/godot.pipe"

if not vim.loop.fs_stat(pipepath) then
    vim.fn.serverstart(pipepath)
end
