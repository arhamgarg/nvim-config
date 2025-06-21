local function map(m, k, v)
  vim.keymap.set(m, k, v, { noremap = true })
end

vim.g.mapleader = " "

map("n", "<leader><leader>", "<cmd>so<CR>")
map("n", ";", ":")
map("n", "<CR>", "o<esc>")
map("n", "<S-CR>", "O<esc>")
map("n", "<leader>b", "<cmd>!chmod +x %<CR><CR>")
map("n", "<leader>d", "<cmd>%s/ /_/g<CR>")
map("n", "<leader>f", "<cmd>FZF<CR>")
map("n", "<leader>q", "<cmd>RunClose<CR>")
map("n", "<leader>s", ":%s//g<Left><Left>")
map("n", "<leader>t", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>")
map("n", "<leader>x", "<cmd>w<CR><cmd>RunCode<CR><C-l>")

map("v", ";", ":")
map("v", "<", "<gv")
map("v", ">", ">gv")

map("i", "jj", "<esc>")
