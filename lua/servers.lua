vim.lsp.enable("clangd")

vim.lsp.enable("ocamllsp")

vim.lsp.enable("pyright")

vim.lsp.config("pyright", {
  settings = {
    pyright = {
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        ignore = { "*" },
      },
    },
  },
})

vim.lsp.enable("ruff")

vim.lsp.enable("ts_ls")
