return {
  "neovim/nvim-lspconfig",
  version = "v1.*",
  dependencies = {
    {
      "saghen/blink.cmp",
      version = "v0.*",
      dependencies = { "rafamadriz/friendly-snippets" },
      opts = {
        fuzzy = { implementation = "lua" },
      },
    },
    { "williamboman/mason.nvim", opts = {} },
    {
      "williamboman/mason-lspconfig.nvim",
      version = "1.*",
      opts = {
        handlers = {
          function(server)
            require("lspconfig")[server].setup({
              capabilities = require("blink.cmp").get_lsp_capabilities(),
            })
          end,
        },
      },
    },
  },
}
