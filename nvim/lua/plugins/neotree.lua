return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    window = {
      position = "right",
      width = "30",
    },
    enable_git_status = true,
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
    default_component_configs = {
      icon = {
        folder_closed = "󰉋",
        folder_open = "󰝰",
        default = "",
      },
    },
    git_status = {
      symbols = {
        added = "",
        modified = "M",
        deleted = "",
        renamed = "",
        untracked = "",
        ignored = "",
        unstaged = "",
        staged = "",
        conflict = "",
      },
    },
  },
}
