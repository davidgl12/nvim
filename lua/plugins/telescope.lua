return {
  {
    "nvim-telescope/telescope.nvim",
    -- keys = {
    --   -- add a keymap to browse plugin files
    --   -- stylua: ignore
    --   {
    --     "<leader>fp",
    --     function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
    --     desc = "find plugin file",
    --   },
    -- },
    -- change some options

    opts = {
      unrestricted = true,
      hidden = true,
      find_files = {
        hidden = true,
      },
      defaults = {
        -- layout_strategy = "horizontal",
        -- layout_config = { prompt_position = "top" },
        -- sorting_strategy = "ascending",
        -- winblend = 0,
        file_ignore_patterns = { "node_modules/.*", ".yarn/*" },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
        find_command = { "find", ".", "-type", "f", "-not", "-path", "*/\\.*", "-print", "\\.*", "\\.env*" },
      },
    },
  },
  -- add telescope-fzf-native
  -- {
  --   "telescope.nvim",
  --   dependencies = {
  --     "nvim-telescope/telescope-fzf-native.nvim",
  --     build = "make",
  --     config = function()
  --       require("telescope").load_extension("fzf")
  --     end,
  --   },
  -- },
}
