return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    animate = { enabled = true },
    bigfile = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
    scope = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    quickfile = {},
    dashboard = {
      enabled = true,
      preset = {
        keys = {
          {
            icon = " ",
            key = "l",
            desc = "Load Session",
            action = ":lua require('persisted').load()",
          },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          {
            icon = " ",
            key = "r",
            desc = "Recent Files",
            action = ":lua Snacks.dashboard.pick('oldfiles')",
          },
          {
            icon = " ",
            key = "f",
            desc = "Find File",
            action = ":lua Snacks.dashboard.pick('files')",
          },
          {
            icon = "󱘣 ",
            key = "s",
            desc = "Search Files",
            action = ":lua Snacks.dashboard.pick('live_grep')",
          },
          {
            icon = "󰒲 ",
            key = "L",
            desc = "Lazy",
            action = ":Lazy",
            enabled = package.loaded.lazy ~= nil,
          },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
      sections = {
        -- {
        --   section = "terminal",
        --   -- cmd = "lolcat --seed=24 ~/.config/nvim/static/neovim.cat",
        --   cmd = "cat ~/.config/nvim/static/neovim.cat",
        --   indent = -15,
        --   height = 8,
        --   width = 69,
        --   padding = 3,
        -- },
        { section = "keys", indent = 5, padding = 0 },
        -- { pane = 2, section = "projects", title = "Projects", icon = " " },
        -- { section = "startup" },
      },
    },
  },
  keys = {
    {
      "<leader>n",
      function()
        Snacks.notifier.show_history()
      end,
      desc = "Notification History",
    },
    {
      "<leader>un",
      function()
        Snacks.notifier.hide()
      end,
      desc = "Dismiss All Notifications",
    },
  },
}
