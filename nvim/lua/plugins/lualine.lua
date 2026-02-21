return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  opts = {
    options = {
      icons_enabled = true,
      theme = "tokyonight",
      globalstatus = true,
      section_separators = { left = "", right = "" },
      component_separators = { left = "", right = "" },
      always_divide_middle = true,
    },
    sections = {
      lualine_a = { { "mode", icon = "" } },
      lualine_b = { "branch" },
      lualine_c = { { "filename", file_status = true, path = 0 } },
      lualine_x = {
        { "diagnostics", symbols = { error = " ", warn = " ", info = " ", hint = " " } },
        { "diff", symbols = { added = " ", modified = " ", removed = " " } },
        "encoding",
        "filetype",
        "fileformat",
      },
      lualine_y = { "location" },
      lualine_z = { "progress" },
    },
    inactive_sections = {
      lualine_a = { "mode" },
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
    extensions = { "neo-tree", "lazy", "mason" },
  },
}
