-- require("auto-save").setup({
--   execution_message = {
-- 	message = function()
-- 	  return ""
-- 	end,
--   },
-- })

require("code_runner").setup({})

require("lualine").setup({
  sections = {
    lualine_a = {"mode"},
    lualine_b = {"branch", "diff", "diagnostics"},
    lualine_c = {"filename"},
    lualine_x = {"fileformat", "filetype"},
    lualine_y = {"progress"},
    lualine_z = {"location"},
  },
})

require("nvim-autopairs").setup({})

require("vscode").setup({
  italic_comments = true,
})

vim.cmd.colorscheme("vscode")
