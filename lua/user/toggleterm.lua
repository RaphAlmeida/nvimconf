local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  print("Unable to load toggleterm")
  return
end

toggleterm.setup{
  open_mapping = [[<leader>t]],
}

-- keymap("n", "<C-Down>", ":resize -2<CR>", opts) 

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], opts)

  vim.api.nvim_set_keymap('t', '<C-w>Left', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_set_keymap('t', '<C-w>h', [[<C-\><C-n><C-W>h]], opts)

  vim.api.nvim_set_keymap('t', '<C-w>Down', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_set_keymap('t', '<C-w>j', [[<C-\><C-n><C-W>j]], opts)

  vim.api.nvim_set_keymap('t', '<C-w>Up', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_set_keymap('t', '<C-w>k', [[<C-\><C-n><C-W>k]], opts)

  vim.api.nvim_set_keymap('t', '<C-w>Right', [[<C-\><C-n><C-W>l]], opts)
  vim.api.nvim_set_keymap('t', '<C-w>l', [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
vim.cmd('autocmd TermOpen * IndentLinesDisable')
