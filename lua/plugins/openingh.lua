return {
  {
    "almo7aya/openingh.nvim",
    keys = {
      -- for repository page
      -- vim.api.nvim_set_keymap("n", "<Leader>gr", ":OpenInGHRepo <CR>", { silent = true, noremap = true })
      { "<Leader>gr", "<cmd> OpenInGHRepo <cr>", desc = "Open in Github Repo" },
      --
      -- -- for current file page
      { "<Leader>gf", "<cmd> OpenInGHFile <cr>", desc = "Open in Github File" },
      { "<Leader>gl", "<cmd> OpenInGHFileLines <cr>", desc = "Open in Github File Lines" },
      -- vim.api.nvim_set_keymap("n", "<Leader>gf", ":OpenInGHFile <CR>", { silent = true, noremap = true })
      -- vim.api.nvim_set_keymap("v", "<Leader>gf", ":OpenInGHFileLines <CR>", { silent = true, noremap = true })
    },
  },
}
