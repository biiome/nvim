require('lspconfig').pyright.setup {
  on_attach = on_attach,
  init_options = {
    settings = {
      -- Any extra CLI arguments for `pyright` go here.
      args = {},
    }
  }
}
