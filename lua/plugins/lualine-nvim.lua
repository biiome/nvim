-- Status line
return {
  -- https://github.com/nvim-lualine/lualine.nvim
  'nvim-lualine/lualine.nvim',
  dependencies = {
    -- https://github.com/nvim-tree/nvim-web-devicons
    'nvim-tree/nvim-web-devicons', -- fancy icons
    -- https://github.com/linrongbin16/lsp-progress.nvim
    'linrongbin16/lsp-progress.nvim', -- LSP loading progress
  },
  opts = {
    options = {
      icons_enabled = true,
      theme = 'catppuccin', -- lualine theme
      globalstatus = false,
      component_separators = '|',
      section_separators = { left = '', right = ''}
    },
    tabline = {
      lualine_a = {
        { "mode", separator = { left = '' }, right_padding = 2 },
      },
      lualine_b = { "filename" },
      -- lualine_x = { "buffers" },
      lualine_y = { "filetype", "progress" },
      lualine_z = {
        { 'location', separator = { right = '' }, left_padding = 2 },
      },
    },
    sections = {},
  }
}
