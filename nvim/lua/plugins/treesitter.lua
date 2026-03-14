return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    main = "nvim-treesitter.config",
    opts = {
      ensure_installed = { "lua", "python", "javascript", "typescript" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
}
