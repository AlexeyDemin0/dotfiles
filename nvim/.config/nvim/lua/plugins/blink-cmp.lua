return {
  "saghen/blink.cmp",
  dependencies = {
    "rafamadriz/friendly-snippets",
    { "L3MON4D3/LuaSnip", version = "v2.*" },
  },
  version = "1.*",
  opts = {
    keymap = {
      preset = "enter",

      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide", "fallback" },

      ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },

      ["<Tab>"] = {
        function(cmp)
          if cmp.is_menu_visible() then
            return cmp.select_next()
          end
          if cmp.is_ghost_text_visible() then
            return cmp.accept()
          end
          return false
        end,
        "snippet_forward",
        "fallback",
      },

      ["<S-Tab>"] = {
        function(cmp)
          if cmp.is_menu_visible() then
            return cmp.select_prev()
          end
          return false
        end,
        "snippet_backward",
        "fallback",
      },
    },
    completion = {
      menu = { auto_show = false },
      keyword = { range = "full" },
      accept = { auto_brackets = { enabled = true } },
      documentation = { auto_show = true },
      ghost_text = { enabled = true },
    },
    cmdline = {
      keymap = {
        ["<Tab>"] = { "insert_next", "fallback" },
        ["<S-Tab>"] = { "insert_prev", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
      },
      completion = {
        ghost_text = { enabled = true },
        menu = { auto_show = false },
      },
    },
    sources = { default = { "lsp", "path", "snippets", "buffer" } },
    snippets = { preset = "luasnip" },
  },
  opts_extend = { "sources.default" },
}
