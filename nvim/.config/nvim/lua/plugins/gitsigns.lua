require('gitsigns').setup {
  signs = {
    add          = { text = '┃' },
    change       = { text = '┃' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  signs_staged = {
    add          = { text = '┃' },
    change       = { text = '┃' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  signs_staged_enable = true,
  signcolumn = true,
  numhl      = true,
  linehl     = false,
  word_diff  = false,
  watch_gitdir = {
    follow_files = true
  },
  auto_attach = true,
  attach_to_untracked = false,
  current_line_blame = true,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 0,
    ignore_whitespace = false,
    virt_text_priority = 100,
    use_focus = true,
  },
  current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil,
  max_file_length = 40000,
  preview_config = {
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    vim.keymap.set('n', ']h', function() gs.nav_hunk('next', { target = 'all' }) end)
    vim.keymap.set('n', ']H', function() gs.nav_hunk('first', { target = 'all' }) end)
    vim.keymap.set('n', '[h', function() gs.nav_hunk('prev', { target = 'all' }) end)
    vim.keymap.set('n', '[H', function() gs.nav_hunk('last', { target = 'all' }) end)

    vim.keymap.set('n', '<leader>hh', function()
      gs.nav_hunk('next', { target = 'all' })
      gs.preview_hunk_inline()
    end)
    vim.keymap.set('n', '<leader>HH', function()
      gs.nav_hunk('prev', { target = 'all' })
      gs.preview_hunk_inline()
    end)

    vim.keymap.set({'n', 'v'}, '<leader>hs', gs.stage_hunk)
    vim.keymap.set({'n', 'v'}, '<leader>hr', gs.reset_hunk)
    vim.keymap.set({'n', 'v'}, '<leader>hS', gs.stage_buffer)
    vim.keymap.set({'n', 'v'}, '<leader>hR', gs.stage_buffer)

    vim.keymap.set('n', '<leader>hp', gs.preview_hunk_inline)
    vim.keymap.set('n', '<leader>hd', gs.diffthis)
    vim.keymap.set({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  end
}
