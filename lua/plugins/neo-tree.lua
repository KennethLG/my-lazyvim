return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          -- visible = true, -- Show hidden files (dotfiles) by default
          hide_dotfiles = false, -- Set to true if you want to hide dotfiles
          hide_gitignored = false, -- Set to true if you want to hide gitignored files
          hide_by_name = {
            -- Add filenames to hide explicitly
            "node_modules",
            ".DS_Store",
            ".git",
          },
          never_show = {
            -- Add files you never want to show
            ".env",
          },
          always_show = {
            -- Add files you always want to show
            ".gitignore",
          },
        },
      },
    },
  },
}
