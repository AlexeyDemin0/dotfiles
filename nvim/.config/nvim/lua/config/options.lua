local opt = vim.opt

-- ui
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.wrap = false
opt.showmode = false
opt.ruler = true
opt.laststatus = 3
opt.winbar = " "

-- indent and tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- show hiddend symbols
opt.list = true
opt.listchars = {
  tab = "· ",
  trail = "·",
}

-- highlighting rows and columns
opt.cursorline = true
opt.cursorcolumn = false
opt.colorcolumn = { 80, 100, 120 }

-- work with files
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- scroll
opt.scrolloff = 8
opt.sidescrolloff = 1

-- additional moves
opt.whichwrap:append("<,>,[,],h,l")

-- terminal colorscheme
opt.termguicolors = true

-- clipboard
opt.clipboard = "unnamedplus"

-- diagnostic options
vim.diagnostic.config({
  virtual_text = true,
  update_in_insert = true,
})
