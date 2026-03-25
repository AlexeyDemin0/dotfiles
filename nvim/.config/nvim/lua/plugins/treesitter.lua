require('nvim-treesitter.configs').setup {
  ensure_installed = { "lua", "vim", "c", "cpp", "markdown", "cmake", "python" },
  sync_install     = false,
  auto_install     = true,

  highlight = {
    enable = true,
  },

  incremental_selection = {
    enable  = true,
    keymaps = {
      init_selection    = "<CR>",
      node_incremental  = "<CR>",
      node_decremental  = "<BS>",
      scope_incremental = "<TAB>",
    },
  },
}

require("nvim-treesitter-textobjects").setup {
  select = {
    lookahead = true,
    include_surrounding_whitespace = false,
    selection_modes = {
      ['@function.outer'] = 'V',
      ['@class.outer']    = 'V',
      ['@parameter.outer'] = 'v',
    },
  },
  move = {
    set_jumps = true,
  },
}

local select = require("nvim-treesitter-textobjects.select")
local move   = require("nvim-treesitter-textobjects.move")
local swap   = require("nvim-treesitter-textobjects.swap")

-- selection
vim.keymap.set({ "x", "o" }, "am", function() select.select_textobject("@function.outer", "textobjects") end, { desc = "around function" })
vim.keymap.set({ "x", "o" }, "im", function() select.select_textobject("@function.inner", "textobjects") end, { desc = "inner function" })

vim.keymap.set({ "x", "o" }, "ac", function() select.select_textobject("@class.outer", "textobjects") end, { desc = "around class" })
vim.keymap.set({ "x", "o" }, "ic", function() select.select_textobject("@class.inner", "textobjects") end, { desc = "inner class" })

vim.keymap.set({ "x", "o" }, "aa", function() select.select_textobject("@parameter.outer", "textobjects") end, { desc = "around argument" })
vim.keymap.set({ "x", "o" }, "ia", function() select.select_textobject("@parameter.inner", "textobjects") end, { desc = "inner argument" })

vim.keymap.set({ "x", "o" }, "ab", function() select.select_textobject("@block.outer", "textobjects") end, { desc = "around block" })
vim.keymap.set({ "x", "o" }, "ib", function() select.select_textobject("@block.inner", "textobjects") end, { desc = "inner block" })

-- move
vim.keymap.set({ "n", "x", "o" }, "]m", function() move.goto_next_start("@function.outer",    "textobjects") end, { desc = "Next function start" })
vim.keymap.set({ "n", "x", "o" }, "]M", function() move.goto_next_end("@function.outer",      "textobjects") end, { desc = "Next function end" })
vim.keymap.set({ "n", "x", "o" }, "[m", function() move.goto_previous_start("@function.outer","textobjects") end, { desc = "Prev function start" })
vim.keymap.set({ "n", "x", "o" }, "[M", function() move.goto_previous_end("@function.outer",  "textobjects") end, { desc = "Prev function end" })

vim.keymap.set({ "n", "x", "o" }, "]c", function() move.goto_next_start("@class.outer",    "textobjects") end, { desc = "Next class start" })
vim.keymap.set({ "n", "x", "o" }, "]C", function() move.goto_next_end("@class.outer",      "textobjects") end, { desc = "Next class end" })
vim.keymap.set({ "n", "x", "o" }, "[c", function() move.goto_previous_start("@class.outer","textobjects") end, { desc = "Prev class start" })
vim.keymap.set({ "n", "x", "o" }, "[C", function() move.goto_previous_end("@class.outer",  "textobjects") end, { desc = "Prev class end" })

vim.keymap.set({ "n", "x", "o" }, "]a", function() move.goto_next_start("@parameter.outer",    "textobjects") end, { desc = "Next argument start" })
vim.keymap.set({ "n", "x", "o" }, "]A", function() move.goto_next_end("@parameter.outer",      "textobjects") end, { desc = "Next argument end" })
vim.keymap.set({ "n", "x", "o" }, "[a", function() move.goto_previous_start("@parameter.outer","textobjects") end, { desc = "Prev argument start" })
vim.keymap.set({ "n", "x", "o" }, "[A", function() move.goto_previous_end("@parameter.outer",  "textobjects") end, { desc = "Prev argument end" })

-- swap
vim.keymap.set("n", "<leader>sn", function() swap.swap_next("@parameter.inner")     end, { desc = "Swap argument with next" })
vim.keymap.set("n", "<leader>sp", function() swap.swap_previous("@parameter.inner") end, { desc = "Swap argument with prev" })

-- jump repeat
local repeat_move = require("nvim-treesitter-textobjects.repeatable_move")

vim.keymap.set({ "n", "x", "o" }, ";", repeat_move.repeat_last_move_next)
vim.keymap.set({ "n", "x", "o" }, ",", repeat_move.repeat_last_move_previous)

vim.keymap.set({ "n", "x", "o" }, "f", repeat_move.builtin_f_expr, { expr = true })
vim.keymap.set({ "n", "x", "o" }, "F", repeat_move.builtin_F_expr, { expr = true })
vim.keymap.set({ "n", "x", "o" }, "t", repeat_move.builtin_t_expr, { expr = true })
vim.keymap.set({ "n", "x", "o" }, "T", repeat_move.builtin_T_expr, { expr = true })
