-- leader key es espacio
vim.g.mapleader = " "

-- Necesitas vim 0.8.1 parriba para correr

-- Al presionar leader y pv se ejecutará el comando Ex (netrw file explorer)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Guardar archivo con leader s
vim.keymap.set("n", "<leader>s", vim.cmd.w)

-- Remaps de telescope
local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
