local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.gethar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
  },
  { "neovim/nvim-lspconfig" },
  { "Mofiqul/vscode.nvim" },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "hrsh7th/vim-vsnip" },
  { "hrsh7th/nvim-cmp" },
  {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "nvim-telescope/telescope-media-files.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" }
  },
  { "stevearc/conform.nvim" },
  { "lewis6991/gitsigns.nvim" },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*"
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons"
  },
  { "mfussenegger/nvim-dap" },
  {
    "Isrothy/neominimap.nvim",
    version = "v3.x.x",
    init = false,
    inti = function()
      vim.g.neominimap = {
        layout = "float",
        float = {
          window_border = "rounded",
        },
      }
    end,
  },
  { "mason-org/mason.nvim" },
})
