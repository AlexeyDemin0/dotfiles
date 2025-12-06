require("conform").setup({
  formatters_by_ft = {
    cpp = { "clang-format" },
    h = { "clang-format" },
    cppm = { "clang-format" },
  }
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.bug })
  end,
})
