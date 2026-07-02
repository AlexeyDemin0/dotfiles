return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  keys = {
    { "<leader>e", ":Neotree focus<CR>", desc = "Focus NeoTree" },
    { "<leader>E", ":Neotree close<CR>", desc = "Close NeoTree" },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_gitignored = false,
        hide_dotfiles = false,
      },
      use_libuv_file_watcher = true,
      follow_current_file = {
        enabled = true,
      },
    },
  },
}
