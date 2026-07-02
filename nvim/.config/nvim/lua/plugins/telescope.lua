return {
  "nvim-telescope/telescope.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>ff", ":Telescope find_files<CR>", desc = "Find files" },
    { "<leader>fg", ":Telescope live_grep<CR>", desc = "Live grep" },
    { "<leader>fb", ":Telescope buffers<CR>", desc = "Buffers" },
    { "<leader>fh", ":Telescope help_tags<CR>", desc = "Help tags" },
    { "*", ":Telescope grep_string<CR>", desc = "Grep word under cursor" },

    { "<leader>gb", ":Telescope git_branches<CR>", desc = "Git branches" },
    { "<leader>gc", ":Telescope git_commits<CR>", desc = "Git commits" },
    { "<leader>gs", ":Telescope git_status<CR>", desc = "Git status" },

    { "<leader>ls", ":Telescope lsp_document_symbols<CR>", desc = "Document symbols" },
    { "<leader>lS", ":Telescope lsp_workspace_symbols<CR>", desc = "Workspace symbols" },
    { "<leader>gd", ":Telescope lsp_definitions<CR>", desc = "Goto definition" },
    { "<leader>gr", ":Telescope lsp_references<CR>", desc = "References" },
  },
}
