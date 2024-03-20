-- Status line
local colors = {
  yellow = "#ECBE7B",
  cyan = "#008080",
  green = "#98be65",
  red = "#ec5f67",
}

return {
  -- https://github.com/nvim-lualine/lualine.nvim
  "nvim-lualine/lualine.nvim",
  dependencies = {
    -- https://github.com/nvim-tree/nvim-web-devicons
    "nvim-tree/nvim-web-devicons",  -- fancy icons
    -- https://github.com/linrongbin16/lsp-progress.nvim
    "linrongbin16/lsp-progress.nvim", -- LSP loading progress
  },
  opts = {
    options = {
      icons_enabled = true,
      -- theme = "catppuccin", -- lualine theme
      theme = "tokyonight", -- lualine theme
      component_separators = "",
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
      lualine_b = { "filename" },
      lualine_c = {
        "%=",
        {
          "diagnostics",
          sources = { "nvim_diagnostic" },
          symbols = { error = " ", warn = " ", info = " " },
          diagnostics_color = {
            color_error = { fg = colors.red },
            color_warn = { fg = colors.yellow },
            color_info = { fg = colors.cyan },
          },
        },
      },
      lualine_x = {},
      lualine_y = { { "filetype", separator = { left = "" }, left_padding = 2 } },
      lualine_z = { { "location", separator = { left = "" }, left_padding = 2 } },
    },
    inactive_sections = {
      lualine_a = { "filename" },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { "location" },
    },
    tabline = {},
    extensions = {},
  },
}
