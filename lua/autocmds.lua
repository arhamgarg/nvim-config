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

vim.api.nvim_create_autocmd({ "CursorHold" }, {
  callback = function()
    vim.fn.timer_start(1000, function()
      if (vim.api.nvim_get_mode().mode == "n") then
        vim.cmd.normal { "", bang = true }
      end
    end)
  end,
})
