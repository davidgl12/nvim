-- bootstrap lazy.nvim, LazyVim and your plugins

-- Config para que funcione e lclipboard con wsl
--
-- OJO para hacer esto necesitas tener win32yank.exe en el directorio /mnt/c/Neovim/bin/win32yank.exe
-- después necesitas hacer un link entre el mount de windows y wsl así:
--sudo ln -s /mnt/c/Neovim/bin/win32yank.exe /usr/bin/win32yank
vim.opt.clipboard = "unnamedplus"

vim.g.clipboard = {
  name = "win32yank-wsl",
  copy = {
    ["+"] = "win32yank -i --crlf",
    ["*"] = "win32yank -i --crlf",
  },
  paste = {
    ["+"] = "win32yank -o --lf",
    ["*"] = "win32yank -o --lf",
  },
  cache_enabled = 1,
}
-- Alternativa recomendada por vi, suele ser más lenta
-- vim.g.clipboard = {
--   name = "WslClipboard",
--   copy = {
--     ["+"] = "clip.exe",
--     ["*"] = "clip.exe",
--   },
--   paste = {
--     ["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--     ["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--   },
--   cache_enabled = 0,
-- }

require("config.lazy")

-- Tab spacing  https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces4
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
--vim.opt.noexpandtab = true
vim.opt.shiftwidth = 4

vim.cmd([[highlight LineNr guifg=#ffb259]])

-- local dap = require("dap")
--
-- --JS Dap definition
-- dap.adapters["pwa-node"] = {
--   type = "server",
--   host = "localhost",
--   port = "${port}",
--   executable = {
--     command = "node",
--     -- 💀 Make sure to update this path to point to your installation
--     args = { "/home/gq2mzqx/dap/js-debug/src/dapDebugServer.js", "${port}" },
--   },
-- }
--
-- --JS Dap configuration
-- dap.configurations.javascript = {
--   {
--     type = "pwa-node",
--     request = "launch",
--     name = "Launch fileaa",
--     program = "${file}",
--     cwd = "${workspaceFolder}",
--   },
-- }
