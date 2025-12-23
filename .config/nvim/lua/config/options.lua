
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus'

-- Tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.list = true
vim.opt.listchars = {
  tab = "· ",
  trail = "·",
  extends = "→",
  precedes = "←",
}

vim.opt.wrap = false

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.cursorline = true
vim.opt.cursorcolumn = false
vim.opt.colorcolumn = { 80, 100, 120 }
vim.opt.signcolumn = 'yes'
vim.opt.showmode = false
vim.opt.ruler = true
vim.opt.laststatus = 3

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'

vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 36

vim.opt.whichwrap:append('<,>,[,],h,l')
