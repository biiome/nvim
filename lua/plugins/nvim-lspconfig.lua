return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    -- { "folke/neodev.nvim", opts = {} },
  },
  config = function()
    -- import lspconfig plugin
    local lspconfig = require "lspconfig"
    local util = require "lspconfig.util"

    -- import mason_lspconfig plugin
    local mason_lspconfig = require "mason-lspconfig"

    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require "cmp_nvim_lsp"

    local keymap = vim.keymap -- for conciseness

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf, silent = true }

        -- -- set keybinds
        opts.desc = "Restart LSP"
        keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
      end,
    })
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client == nil then
          return
        end
        if client.name == "ruff" then
          -- Disable hover in favor of Pyright
          client.server_capabilities.hoverProvider = false
        end
      end,
      desc = "LSP: Disable hover capability from Ruff",
    })

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Change the Diagnostic symbols in the sign column (gutter)
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    mason_lspconfig.setup_handlers {
      -- default handler for installed servers
      function(server_name)
        lspconfig[server_name].setup {
          capabilities = capabilities,
        }
      end,
      ["lua_ls"] = function()
        -- configure lua server (with special settings)
        lspconfig["lua_ls"].setup {
          capabilities = capabilities,
          settings = {
            Lua = {
              -- make the language server recognize "vim" global
              diagnostics = {
                globals = { "vim" },
              },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        }
      end,
      ["pylsp"] = function()
        lspconfig["pylsp"].setup {
          settings = {
            pylsp = {
              plugins = {
                pyflakes = { enabled = false },
                pycodestyle = { enabled = false },
                autopep8 = { enabled = false },
                yapf = { enabled = false },
                mccabe = { enabled = false },
                pylsp_mylsp = { enabled = false },
                pylsp_black = { enabled = false },
                pylsp_isort = { enabled = false },
              },
            },
          },
        }
      end,
      ["ruff"] = function()
        lspconfig["ruff"].setup {
          capabilities = capabilities,
          init_options = {
            settings = {
              configuration = "~/dev/ruff/ruff.toml",
              lineLength = 100,
              organizeImports = true,
            },
          },
        }
      end,
      -- ["basedpyright"] = function()
      --   lspconfig.basedpyright.setup {
      --     settings = {
      --       basedpyright = {
      --         disableOrganizeImports = true,
      --         analysis = {
      --           -- Disable type checking
      --           ignore = { "*" },
      --           typeCheckingMode = "off",
      --         },
      --       },
      --     },
      --     python = {
      --       analysis = {
      --         ignore = { "*" },
      --       },
      --     },
      --   }
      -- end,
    }
  end,
}
