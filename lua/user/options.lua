local options = {
  fileencoding = "utf-8",                  -- the encoding written to a file 
  hlsearch = true,                         -- highlight all matches on previous search pattern 
  ignorecase = true,                       -- ignore case in search patterns 
  mouse = "a",                             -- allow the mouse to be used in neovim 
  smartindent = true,                      -- make indenting smarter again 
  splitbelow = true,                       -- force all horizontal splits to go below current window 
  splitright = true,                       -- force all vertical splits to go to the right of current window 
  swapfile = false,                        -- creates a swapfile 
  expandtab = true,                        -- convert tabs to spaces 
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation 
  tabstop = 2,                             -- insert 2 spaces for a tab 
  number = true,                           -- set numbered lines 
  numberwidth = 2,                         -- set number column width to 2 {default 4} 
  scrolloff = 8,                           -- is one of my fav 
  --guicursor = "",                           -- Jamais de changement de cursor si ''
  cursorline = true,                       -- highlight current line
  conceallevel = 0,                        -- So `` is visible in markdown -- seems like treesitter is overwritting this :(

}

--Insupportable enfaite clipboard = "unnamedplus",               -- allows neovim to access the system clipboard 

for k, v in pairs(options) do
	vim.opt[k] = v
end

