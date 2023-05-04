-- examples for your init.lua
local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  open_on_setup = true, -- soon will be removed :(
  disable_netrw = true,
  hijack_netrw = true,
  hijack_cursor = false,
  update_cwd = true,
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  filters = {
    dotfiles = false,
    custom = {},
  },
  git = {
    enable = true,
    ignore = false, -- I want to see files from .gitignore
    timeout = 500,
  },
  view = {
    hide_root_folder = false,
    mappings = {
      custom_only = false,
      list = {
        { key = "%", cb = tree_cb "vsplit" },
        { key = "l", cb = tree_cb "open_node" },
        { key = "h", cb = tree_cb "close_node" },
        { key = '"', cb = tree_cb "split" },
      },
    },
  },
}

