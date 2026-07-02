return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      automatic_enable = true,
      ensure_installed = {
        "clangd",
        "cmake",
        "eslint",
        "html",
        "jsonls",
        "lua_ls",
        "ruff",
        "rust_analyzer",
        "pyright",
        "tailwindcss",
        "ts_ls",
      },
    },
  },
}
