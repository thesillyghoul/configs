vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
require("lazy").setup("plugins")
require("core.options")
require("core.keymaps")
