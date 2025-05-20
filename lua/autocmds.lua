vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = {"*.bash", "*.c", "*.cpp", "*.js", "*.lua"},
  command = "setlocal cindent shiftwidth=2 softtabstop=2 tabstop=4"
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = "%s/\\s\\+$//e"
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = "%s/\\n\\+\\%$//e"
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = {"*.c", "*.cpp", "*.py"},
    command = "lua vim.lsp.buf.format()"
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  command = "setlocal formatoptions-=cro"
})
