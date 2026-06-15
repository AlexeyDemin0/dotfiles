
vim.lsp.enable('clangd')
vim.lsp.enable('neocmake')
vim.lsp.enable('ruff')
vim.lsp.enable('basedpyright')
vim.lsp.enable('rust_analyzer')

vim.diagnostic.config({
  virtual_text = true,
  update_in_insert = true
})

