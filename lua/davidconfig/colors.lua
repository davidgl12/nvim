vim.g.termguicolors=true
--color = color or "tokyonight"
--vim.cmd.colorscheme(color)
vim.cmd[[colorscheme tokyonight]]
--vim.api.nvim_set_var(tokyonight_style, "night")
--vim.api.nvim_set_var(tokyonight_enable_italic, 1)

vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

