local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<Tab>", ":bn<CR>", opts)
vim.keymap.set("i", "<C-/>", "<C-o>gcc", { remap = true, silent = true })

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", opts)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", opts)
vim.keymap.set("i", "<A-j>", "<C-o>:m .+1<CR><C-o>==", opts)
vim.keymap.set("i", "<A-k>", "<C-o>:m .-2<CR><C-o>==", opts)
vim.keymap.set("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

vim.keymap.set("n", "<S-A-j>", ":t.<CR>", opts)
vim.keymap.set("n", "<S-A-k>", ":t-1<CR>", opts)
vim.keymap.set("i", "<S-A-j>", "<C-o>:t.<CR>", opts)
vim.keymap.set("i", "<S-A-k>", "<C-o>:t-1<CR>", opts)
vim.keymap.set("x", "<S-A-j>", ":t '> <CR>gv", opts)
vim.keymap.set("x", "<S-A-k>", ":t '<-1<CR>gv", opts)

vim.keymap.set("i", "(", "()<Left>", opts)
vim.keymap.set("i", "{", "{}<Left>", opts)
vim.keymap.set("i", "[", "[]<Left>", opts)
vim.keymap.set("i", '"', '""<Left>', opts)
vim.keymap.set("i", "'", "''<Left>", opts)

vim.keymap.set("n", "<C-b>", ":Neotree toggle reveal<CR>", opts)
vim.keymap.set("i", "<C-b>", "<Esc>:Neotree toggle reveal<CR>", opts)
