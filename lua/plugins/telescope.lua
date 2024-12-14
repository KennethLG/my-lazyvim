return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = function(_, opts)
    local actions = require("telescope.actions")

    -- Extend default options
    opts.defaults = {
      mappings = {
        i = {
          ["<C-u>"] = false, -- Disable clearing input
          ["<C-d>"] = actions.delete_buffer, -- Add delete buffer shortcut
        },
        n = {
          ["<C-d>"] = actions.delete_buffer,
        },
      },
      file_ignore_patterns = {
        "node_modules", -- Ignore node_modules directory
        "%.git", -- Ignore .git directory
        "%.cache", -- Ignore cache files
        "%.png", -- Ignore PNG image files
        "%.jpg", -- Ignore JPG image files
        "%.lock", -- Ignore lock files
        "dist/", -- Ignore dist directory
      },
      layout_config = {
        horizontal = {
          preview_width = 0.6,
        },
      },
    }

    opts.pickers = {
      find_files = {
        hidden = true, -- Show hidden files
      },
    }

    opts.extensions = {
      fzf = {
        fuzzy = true, -- Fuzzy matching
        override_generic_sorter = true, -- Override the generic sorter
        override_file_sorter = true, -- Override the file sorter
        case_mode = "smart_case", -- Smart case
      },
    }

    -- Load Telescope extensions
    require("telescope").load_extension("fzf")
  end,
}
