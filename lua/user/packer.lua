-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme
  use 'folke/tokyonight.nvim'
  vim.cmd("colorscheme tokyonight-moon")

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- nvim-tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',  -- optional, for file icons
    },
    tag = 'nightly'                   -- optional, updated every week. (see issue #1193)
  }

  -- using packer.nvim
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  -- Treesitter
  use {"nvim-treesitter/nvim-treesitter", run = {":TSUpdate"}}

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- autopairs
  use {
    "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }

  -- cmp plugins
  use "hrsh7th/nvim-cmp"          -- The completion plugin
  use "hrsh7th/cmp-buffer"        -- buffer completions
  use "hrsh7th/cmp-path"          -- path completions
  use "hrsh7th/cmp-cmdline"       -- cmdline completions
  use "saadparwaiz1/cmp_luasnip"  -- snippet completions

  -- snippets
  use "L3MON4D3/LuaSnip"              -- snippet engine
  use "rafamadriz/friendly-snippets"  -- a bunch of snippets to use

  -- LSP Stuffs
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},              -- Required
      {'williamboman/mason.nvim'},            -- Optional
      {'williamboman/mason-lspconfig.nvim'},  -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},                   -- Required
      {'hrsh7th/cmp-nvim-lsp'},               -- Required
      {'hrsh7th/cmp-buffer'},                 -- Optional
      {'hrsh7th/cmp-path'},                   -- Optional
      {'saadparwaiz1/cmp_luasnip'},           -- Optional
      {'hrsh7th/cmp-nvim-lua'},               -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},                   -- Required
      {'rafamadriz/friendly-snippets'},       -- Optional
    }
  }

  -- Vertical identation line
  --use "Yggdroot/indentLine"
  use "lukas-reineke/indent-blankline.nvim"

  -- Go to last place where the cursor was
  use "ethanholz/nvim-lastplace"

  -- GitSigns on the left of line number
  use 'lewis6991/gitsigns.nvim'

  -- Toggleterm
  use {"akinsho/toggleterm.nvim", tag = '*'}

  -- Comments
  use "numToStr/Comment.nvim"

end)
