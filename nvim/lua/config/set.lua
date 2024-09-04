vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.showtabline = 2
vim.o.splitright = true

vim.opt.wildmenu = true
vim.opt.wildmode = "list:longest,list:full"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.nu = true
vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false
vim.opt.autoindent = true

vim.opt.tw = 100
vim.opt.colorcolumn = "100" 

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.updatetime = 50

vim.opt.termguicolors = true
