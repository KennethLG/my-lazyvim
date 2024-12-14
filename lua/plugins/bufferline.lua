return {
  {
    "akinsho/bufferline.nvim", -- Bufferline plugin
    dependencies = { "catppuccin/nvim" }, -- Ensure Catppuccin is loaded
    opts = function(_, opts)
      local mocha = require("catppuccin.palettes").get_palette("mocha")
      opts.highlights = require("catppuccin.groups.integrations.bufferline").get({
        styles = { "bold" }, -- Customize the style if desired
        custom = {
          mocha = {
            fill = { bg = mocha.base }, -- Customize colors if needed
          },
        },
      })
    end,
  },
}
