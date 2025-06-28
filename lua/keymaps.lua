local function map(m, k, v)
  vim.keymap.set(m, k, v, { noremap = true })
end

vim.g.mapleader = " "

map("n", ";", ":")
map("n", "<CR>", "o<esc>")
map("n", "<S-CR>", "O<esc>")
map("n", "<leader>b", "<cmd>!chmod +x %<CR><CR>")
map("n", "<leader>d", "<cmd>bdelete<CR>")
map("n", "<leader>n", "<cmd>bnext<CR>")
map("n", "<leader>p", "<cmd>bprevious<CR>")
map("n", "<leader>s", ":%s//g<Left><Left>")

map("n", "<leader>f", "<cmd>FZF<CR>")

map("n", "<leader>x", "<cmd>w<CR><cmd>RunCode<CR><C-l>")
map("n", "<leader>q", "<cmd>RunClose<CR>")

map("n", "<leader>t", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>")

map("v", ";", ":")
map("v", "<", "<gv")
map("v", ">", ">gv")

map("i", "jj", "<esc>")
