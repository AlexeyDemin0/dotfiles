require("flutter-tools").setup {
  decorations = {
    statusline = {
      app_version = true,
      device = true,
      project_config = true,
    }
  },
  root_patterns = { ".git", "pubspec.yaml" },
  widget_guides = {
    enabled = true,
  },
  closing_tags = {
    prefix = "-> ",
    priority = 10,
    enabled = true
  },
  lsp = {
    color = {
      enabled = true,
      background = false,
      background_color = nil,
      foreground = false,
      virtual_text = true,
      virtual_text_str = "■",
    },
  }
}
