-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
local options = {
  expandtab = true,      -- convert tabs to spaces
  --shiftwidth = 4,        -- the number of spaces inserted for each indentation
  --tabstop = 4,           -- insert 2 spaces for a tab
  cursorline = true,     -- highlight the current line
  number = true,         -- set numbered lines
  relativenumber = true, -- set relative numbered lines
  --numberwidth = 4,
}

lvim.transparent_window = true

for k, v in pairs(options) do
  vim.opt[k] = v
end

local keymap = vim.keymap.set

-- Press jk fast to exit insert mode
keymap("i", "jk", "<ESC>", { noremap = true, silent = true })
keymap("i", "kj", "<ESC>", { noremap = true, silent = true })

-- Press a ctrl + m to exit search
keymap("n", "<C-m>", ":noh<CR>", { noremap = true, silent = true})

-- Press ctrl w fro vsplit
keymap("n", "<C-w>", ":vsplit<CR>", { noremap = true, silent = true })

-- Navigate split panes
keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  v = { "<cmd>2ToggleTerm size=30 direction=vertical<cr>", "Split vertical" },
  h = { "<cmd>2ToggleTerm size=30 direction=horizontal<cr>", "Split horizontal" },
}

lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

lvim.builtin.telescope = { layout_strategy = "horizontal" }

