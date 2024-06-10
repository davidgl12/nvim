-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- map("n", "<leader>sy", "/<C-v>", { desc = "Search Yanked", remap = true }) --usa mejor yank y luego *
map("n", "L", "$", { desc = "Go to end of line", remap = true })
map("v", "L", "$", { desc = "Go to end of line", remap = true })

map("n", "H", "0", { desc = "Go to start of line", remap = true })
map("v", "H", "0", { desc = "Go to start of line", remap = true })
