local map = vim.keymap.set

vim.g.mapleader = " "

map("n", "<leader>w", ":write<CR>", { desc = "Save file" })
map("n", "<leader>q", ":quit<CR>", { desc = "Quit" })

map("i", "jj", "<ESC>", { desc = "Exit insert mode" })

map("n", "<Up>", "<Nop>", { desc = "Disable arrow keys" })
map("n", "<Down>", "<Nop>", { desc = "Disable arrow keys" })
map("n", "<Left>", "<Nop>", { desc = "Disable arrow keys" })
map("n", "<Right>", "<Nop>", { desc = "Disable arrow keys" })

map("n", "<Tab>", function()
  vim.diagnostic.goto_next({ float = { border = "rounded" } })
end, { desc = "Next diagnostic" })

map("n", "<S-Tab>", function()
  vim.diagnostic.goto_prev({ float = { border = "rounded" } })
end, { desc = "Previous diagnostic" })

map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

map("n", "<A-h>", "<C-w><", { desc = "Decrease window width" })
map("n", "<A-j>", "<C-w>-", { desc = "Decrease window height" })
map("n", "<A-k>", "<C-w>+", { desc = "Increase widnow height" })
map("n", "<A-l>", "<C-w>>", { desc = "Increase window width" })

map("n", "<ESC>", ":nohlsearch<CR>", { desc = "Clear search highlight" })

map("n", "<Space>", "<Nop>", { desc = "No-op (override leader)" })
map("n", "<F2>", vim.lsp.buf.rename, { desc = "LSP rename symbol" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP code action" })
map("n", "K", function()
  vim.lsp.buf.hover({ border = "rounded" })
end, { desc = "LSP hover documentation" })
map({ "n", "i" }, "<C-s>", function()
  vim.lsp.buf.signature_help({ border = "rounded", width = 60, height = 10 })
end, { desc = "LSP signature help" })

map("n", "<leader>x", function()
  vim.diagnostic.open_float({
    border = "rounded",
    prefix = " ",
    format = function(diag)
      return string.format("%s [%s]", diag.message, diag.source or "unknown")
    end,
  })
end, { desc = "Show diagnostic under cursor" })
