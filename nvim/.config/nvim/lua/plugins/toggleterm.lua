require("toggleterm").setup { 
  open_mapping = [[<C-\>]],
  shell = vim.fn.has('win32') == 1 and 'powershell' or 'zsh',
  direction = "float",
  float_opts = {
    border = "rounded"
  },
}
