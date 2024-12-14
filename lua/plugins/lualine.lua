return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "catppuccin/nvim" }, -- Ensure Catppuccin is loaded
    opts = function(_, opts)
      opts.options = {
        theme = "catppuccin", -- Set Catppuccin as the theme
      }
    end,
  },
}
