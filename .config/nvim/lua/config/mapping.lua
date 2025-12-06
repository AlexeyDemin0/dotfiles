vim.g.mapleader = " "

-- General
vim.keymap.set('n', '<leader>ww', ':w<CR>')
vim.keymap.set('n', '<leader>wq', ':wq<CR>')
vim.keymap.set('n', '<leader>qq', ':q<CR>')
vim.keymap.set('n', '<leader>qQ', ':q!<CR>')

vim.keymap.set('i', 'jj', '<Esc>')

vim.keymap.set('n', '<Up>', '<Nop>')
vim.keymap.set('n', '<Down>', '<Nop>')
vim.keymap.set('n', '<Left>', '<Nop>')
vim.keymap.set('n', '<Right>', '<Nop>')

vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>')

vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('n', '<A-h>', '<C-w><')
vim.keymap.set('n', '<A-j>', '<C-w>-')
vim.keymap.set('n', '<A-k>', '<C-w>+')
vim.keymap.set('n', '<A-l>', '<C-w>>')

vim.keymap.set('n', '<Space>', '<Nop>')
vim.keymap.set('n', '<F2>', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)

vim.keymap.set('n', '<BS>', ':noh<CR>')

vim.keymap.set('n', '<leader>bd', ':bdelete<CR>')
vim.keymap.set('n', '<leader>bD', ':bdelete!<CR>')

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree show left focus<CR>')
vim.keymap.set('n', '<leader>E', ':Neotree close<CR>')

-- Neominimap
vim.keymap.set('n', '<leader>mm', ':Neominimap ToggleFocus<CR>')
vim.keymap.set('n', '<leader>me', ':Neominimap Toggle<CR>')
