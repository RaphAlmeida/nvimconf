-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Navigate buffers
keymap("n", "<S-Right>", ":bnext<CR>", opts)
keymap("n", "<S-Left>", ":bprevious<CR>", opts)

-- Some telescope stuffs
keymap("n", "<leader>p", ":Telescope commands<CR>", opts)

-- Get out of insert mode if typing jk ir kj fast enough
keymap("i", "kj", "<esc>", opts)
keymap("i", "jk", "<esc>", opts)

-- Close tab
keymap("n", "<C-w>", ":bd<CR>", opts)
