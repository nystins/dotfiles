-- Helper to set keybindings for optionals
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then
      options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- move around split windows
map("n", "<M-h>", "<C-w>h")
map("n", "<M-j>", "<C-w>j")
map("n", "<M-k>", "<C-w>k")
map("n", "<M-l>", "<C-w>l")
-- move around bufferline (:tabnext/:tabprevious)
map("n", "<TAB>", ":tabnext <CR>")
map("n", "<S-TAB>", ":tabprevious <CR>")
-- easier esc
map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")
-- get rid of highlight after search with esc
map("n", "<ESC>", ":noh<ESC>")
-- Resizing split windows
map("n", "<C-M-H>", "2<C-w><")
map("n", "<C-M-L>", "2<C-w>>")
map("n", "<C-M-J>", "<C-w>-")
map("n", "<C-M-K>", "<C-w>+")
-- moving around insert mode
map("i", "<M-h>", "<left>")
map("i", "<M-j>", "<down>")
map("i", "<M-k>", "<up>")
map("i", "<M-l>", "<right>")

-- nvim tree keybinds
map("n", "<C-n>", ":NvimTreeToggle <CR>")

-- telescope
map("n", "<leader>ff",":Telescope find_files <CR>")
map("n", "<leader>fg", ":Telescope live_grep <CR>")
map("n", "<leader>fb", ":Telescope buffers <CR>")
map("n", "<leader>fh", ":Telescope help_tags <CR>")
map("n", "<leader>fp", ":Telescope media_files <CR>")

