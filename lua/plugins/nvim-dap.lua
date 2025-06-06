return {
  "mfussenegger/nvim-dap",
  lazy = true,
  -- Copied from LazyVim/lua/lazyvim/plugins/extras/dap/core.lua and
  -- modified.
  keys = {
    {
      "<leader>db",
      function()
        require("dap").toggle_breakpoint()
      end,
      desc = "Toggle Breakpoint",
    },

    {
      "<leader>dc",
      function()
        require("dap").continue()
      end,
      desc = "Continue",
    },

    -- {
    --   "<leader>dC",
    --   function()
    --     require("dap").run_to_cursor()
    --   end,
    --   desc = "Run to Cursor",
    -- },

    {
      "<leader>dT",
      function()
        require("dap").terminate()
      end,
      desc = "Terminate",
    },
  },
}
