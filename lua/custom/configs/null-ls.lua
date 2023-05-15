local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting

local sources = {
  formatting.clang_format,
  formatting.prettier,
  formatting.stylua,
}

null_ls.setup({
  debug = true,
  sources = sources,
})

local M = {}

-- Avoiding LSP formatting conflicts - instead of nvim lsp, only use null-ls for formatting
M.lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(client)
      return client.name == "null-ls"
  end,
  bufnr = bufnr,
})
end

return M
