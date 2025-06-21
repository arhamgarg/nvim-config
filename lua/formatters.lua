require("conform").setup({
  format_on_save = {
    lsp_format = "fallback",
    timeout_ms = 500,
  },
  formatters_by_ft = {
    c = { "clang-format" },
    cpp = { "clang-format" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    ocaml = { "ocamlformat" },
    python = { "ruff" },
    typescript = { "prettier" },
  },
  formatters = {
    ocamlformat = {
      command = "ocamlformat",
      args = { "--enable-outside-detected-project", "-" },
      stdin = true,
    },
  },
})
