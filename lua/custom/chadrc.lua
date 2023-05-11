local M = {}
M.options, M.ui, M.mappings, M.plugins = {}, {}, {}, {}

M.plugins = {
  options = {
    nvimtree = {
      enable_git = 1,
    },
  },
}

M.ui = {
  theme = 'catppuccin',
  transparency = true,
  statusline = {
    -- theme = 'vscode_colored',
  },
}
M.plugins = 'custom.plugins'
M.mappings = require 'custom.mappings'
return M
