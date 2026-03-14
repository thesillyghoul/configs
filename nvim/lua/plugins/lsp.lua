return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "saghen/blink.cmp",
      dependencies = { "rafamadriz/friendly-snippets" },
      opts = {
        fuzzy = { implementation = "lua" },
      },
    },
    { "williamboman/mason.nvim", opts = {} },
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        handlers = {
          function(server_name)
            vim.lsp.enable(server_name)
          end,
        },
      },
    },
  },
}
