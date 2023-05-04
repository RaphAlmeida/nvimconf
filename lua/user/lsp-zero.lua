local status_ok, lsp = pcall(require, 'lsp-zero')
if not status_ok then
  print("Unable to load lsp-zero")
  return
end

lsp.preset('recommended')

-- _ == client
lsp.on_attach(function(_, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>gt", function() vim.lsp.buf.type_definition() end, opts)
  vim.keymap.set("n", "<leader>gf", function() vim.lsp.buf.format() end, opts)
  vim.keymap.set("n", "<leader>gl", function() vim.diagnostic.open_float() end, opts) -- Works also without leader

  -- Rename
  vim.keymap.set("n", "<leader>rn", function () vim.lsp.buf.rename() end, opts)
  -- Code action
  vim.keymap.set("n", "<leader>ca", function () vim.lsp.buf.code_action() end , opts)
  -- Telescope refs
  vim.keymap.set("n", "<leader>gr", ":Telescope lsp_references<CR>", opts)
  -- Telescope diagnostics
  vim.keymap.set("n", "<leader>gd", ":Telescope diagnostics<CR>", opts)

end)

-- Fix Undefined global 'vim'
lsp.configure('lua-language-server', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

lsp.configure('gopls', {
  settings = {
    gopls = {
      buildFlags = { '-tags=windows' }
    }
  }
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
