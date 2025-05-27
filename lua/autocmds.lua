vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.bash", "*.c", "*.cpp", "*.js", "*.lua" },
  command = "setlocal cindent shiftwidth=2 softtabstop=2 tabstop=4"
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.cmd([[
      %s/\s\+$//e
      %s/\n\+\%$//e
    ]])
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.c", "*.cpp", "*.py" },
  callback = function()
    vim.lsp.buf.format()
    vim.wait(100)
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.py",
  callback = function()
    vim.lsp.buf.code_action({
      context = { only = { "source.organizeImports" } },
      apply = true,
    })
    vim.wait(100)
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  command = "setlocal formatoptions-=cro"
})
