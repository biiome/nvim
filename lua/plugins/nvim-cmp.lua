-- Auto-completion / Snippets
return {
  -- https://github.com/hrsh7th/nvim-cmp
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    -- Snippet engine & associated nvim-cmp source
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",

    -- LSP completion capabilities
    "hrsh7th/cmp-nvim-lsp",

    -- Additional user-friendly snippets
    "rafamadriz/friendly-snippets",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",

    -- VS-Code like pictograms
    "onsails/lspkind.nvim",
  },
  config = function()
    local cmp = require "cmp"
    local luasnip = require "luasnip"
    local lspkind = require "lspkind"

    -- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()
    luasnip.config.setup {}

    cmp.setup { -- This is the opening '{' from line 34 in the error
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      completion = {
        completeopt = "menu,menuone,preview,noinsert,noselect",
      },
      mapping = cmp.mapping.preset.insert {
        ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-b>"] = cmp.mapping.scroll_docs(-4), -- scroll backward
        ["<C-f>"] = cmp.mapping.scroll_docs(4), -- scroll forward
        ["<C-Space>"] = cmp.mapping.complete {}, -- show completion suggestions
        ["<C-e>"] = cmp.mapping.abort(), -- close completion window
        ["<CR>"] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        },
        -- Tab through suggestions or when a snippet is active, tab to the next argument
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { "i", "s" }),
        -- Tab backwards through suggestions or when a snippet is active, tab to the next argument
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.locally_jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      },
      sources = cmp.config.sources {
        { name = "nvim_lsp" }, -- lsp
        { name = "luasnip" }, -- snippets
        { name = "buffer" }, -- text within current buffer
        { name = "path" }, -- file system paths
      },
      window = {
        -- Add borders to completions popups
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      -- Use lsp-kind icons
      formatting = {
        -- Define the fields to display and their order
        -- Common choices: 'kind' (icon/text), 'abbr' (abbreviation), 'menu' (source info)
        -- fields = { "kind", "abbr", "menu" },
        -- fields = { "" },

        -- Add the indicator for expandable items (like snippets)
        expandable_indicator = ">",

        -- Define the main formatting function using lspkind
        format = lspkind.cmp_format {
          mode = "symbol_text", -- Show symbol and text, popular choice
          maxwidth = 50, -- Keep your maxwidth setting
          ellipsis_char = "...", -- Keep your ellipsis setting
        },
      },
    }
  end,
}
