vim.opt.termguicolors = true
require("bufferline").setup{
  options = {
    mode = 'buffers',
    offsets = {
      {
        filetype = 'neo-tree',
        text = 'File Explorer',
        separator = true,
        padding = 0,
      }
    },
    diagnostics = 'nvim_lsp',
    separator_style = 'thin',
  }
}
