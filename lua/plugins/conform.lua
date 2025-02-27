return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require "conform"

    conform.setup {
      formatters_by_ft = {
        markdown = { "prettier" },
        lua = { "stylua" },
        -- python = { "isort", "black" },
        -- python = { "ruff_format", "ruff_fix", "ruff_organize_imports" },
        python = { "ruff_format", "ruff_organize_imports" },
        c = { "clangd" },
        json = { "jq" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
      -- formatters = {
      --   black = {
      --     prepend_args = { "--line-length", "100" },
      --   },
      -- },
    }

    vim.keymap.set({ "n", "v" }, "<leader>gf", function()
      conform.format {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      }
    end, { desc = "Format" })
  end,
}
