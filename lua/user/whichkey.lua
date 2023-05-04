local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  print("Unable to load which-key")
  return
end

vim.o.timeout = true
vim.o.timeoutlen = 500
wk.setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}
