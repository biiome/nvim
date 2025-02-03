return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  lazy = true,
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    preset = "helix",
    spec = {
      {
        mode = { "n", "v" },
        { "<leader>c", group = "code" },
        { "<leader>f", group = "file/find" },
        { "<leader>g", group = "lsp" },
        { "<leader>q", group = "quit session" },
        { "<leader>s", group = "split window" },
        { "<leader>w", group = "save session" },
        { "<leader>G", group = "git" },
        { "<leader>h", group = "harpoon" },
        { "<leader>n", group = "notifications" },
      },
    },
  },
}
