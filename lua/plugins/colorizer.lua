return {
  {
    "NvChad/nvim-colorizer.lua",
    lazy = true,
    ft = { "css" },
    config = function()
      return require("colorizer").setup()
    end,
  },
}
