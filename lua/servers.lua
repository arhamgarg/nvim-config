require("lspconfig").clangd.setup({})

require("lspconfig").pylsp.setup({
  flags = {
    debounce_text_changes = 150,
  },
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {"W292"},
          ignore = {"W391"},
          maxLineLength = 100
        },
      },
    },
  },
})
