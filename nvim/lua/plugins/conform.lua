return {
  "stevearc/conform.nvim",
  event = { "BufNewFile", "BufReadPre" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      html = { "prettier" },
      css = { "prettier" },
      json = { "prettier" },
      jsonc = { "prettier" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
    },
    formatters = {
      prettier = {
        prepend_args = { "--config", vim.fn.stdpath("config") .. "/.prettierrc" },
      },
    },
    format_on_save = {
      timeout_ms = 2000,
      lsp_fallback = false,
    },
  },
}
