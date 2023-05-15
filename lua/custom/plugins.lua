local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stulua",

        -- C / C++
        "clangd",
        "clang-format",
        "cmake-language-server",
        "cpplint",
        "cpptools",

        -- python
        "pyright",
        "pylint"
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.configs.lspconfig")
      require "custom.configs.null-ls"
end,
   },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft="c",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  }
}
return plugins
