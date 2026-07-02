return {
  "nvim-flutter/flutter-tools.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  lazy = true,
  ft = "dart",
  opts = {
    widget_guides = {
      enabled = true,
    },
    closing_tags = {
      highlight = "LineNr",
      prefix = "> ",
      priority = 10,
      enabled = true,
    },
  },
}
