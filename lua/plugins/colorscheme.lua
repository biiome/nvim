-- Theme/Colorscheme
return {
  'catppuccin/nvim', -- You can replace this with your favorite colorscheme
  name = 'catppuccin',
  lazy = false, -- We want the colorscheme to load immediately when starting Neovim
  priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
  opts = {
	  transparent_background = true
  },
  config = function(_, opts)
    require('catppuccin').setup(opts) -- Replace this with your favorite colorscheme
    vim.cmd("colorscheme catppuccin") -- Replace this with your favorite colorscheme
      end
}

-- return {
--   "2nthony/vitesse.nvim",
--   dependencies = {
--     "tjdevries/colorbuddy.nvim"
--   },
--   lazy = false,
--   priority = 1000,
--   opts = {
--     comment_italics = true,
--     transparent_background = false,
--   },
--   config = function(_, opts)
--     require('vitesse').setup(opts)
--     vim.cmd("colorscheme vitesse")
--   end

-- }
