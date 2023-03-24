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
  vim.keymap.set("n", "<leader>gl", function() vim.diagnostic.open_float() end, opts) -- Works also without leader
  vim.keymap.set("n", "gf", function() vim.lsp.buf.code_action() end, {buffer = bufnr, remap = true})

  --vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  --vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
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

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
