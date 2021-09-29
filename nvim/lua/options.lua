vim.cmd('filetype indent off')
vim.opt.updatetime = 250
vim.opt.clipboard = "unnamedplus" -- system clipboard
vim.opt.ignorecase = true -- ignore case while search
vim.opt.splitright = true -- splits new windows right vertically
vim.opt.splitbelow = true -- splits new windows below horizontal
vim.opt.fileencoding = "utf-8"
vim.opt.number = true -- show number lines
vim.opt.relativenumber = true
vim.opt.hidden = true
vim.opt.mouse = 'a'
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.timeoutlen = 400 -- help out the delay when press J or K because of keymap to ESC

-- no back up, swap, writebackup
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.backup = false

-- Indentation
vim.opt.expandtab = true 
vim.opt.autoindent = true
vim.opt.tabstop = 2 
vim.opt.shiftwidth = 2 

--disable built in plugins
-- disable some builtin vim plugins
local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do
   vim.g["loaded_" .. plugin] = 1
end
