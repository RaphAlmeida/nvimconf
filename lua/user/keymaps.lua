local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--normal_mode = "n",
--insert_mode = "i",
--visual_mode = "v",
--visual_block_mode = "x",
--term_mode = "t",
--command_mode = "c",

-- Normal --
-- Resize with arrows
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-s>", ":w<CR>", opts) -- also save with Ctrl+S

-- Navigate buffers
keymap("n", "<S-Right>", ":bnext<CR>", opts)
keymap("n", "<S-Left>", ":bprevious<CR>", opts)

-- Move text up and down once
keymap("n", "<A-Down>", "<Esc>:m .+1<CR>==g", opts)
keymap("n", "<A-Up>", "<Esc>:m .-2<CR>==g", opts)

-- Insert --


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


-- Visual Block --
-- Move text up and down
keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)


-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

