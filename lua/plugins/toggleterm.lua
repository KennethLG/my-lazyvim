return {
  "akinsho/toggleterm.nvim",
  opts = {
    size = 20, -- Height of the terminal window
    open_mapping = [[<C-\>]], -- Key to toggle the terminal
    hide_numbers = true, -- Hide line numbers in terminal buffers
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2, -- The degree by which to darken terminal colors
    start_in_insert = true, -- Start in insert mode
    persist_size = true,
    direction = "horizontal", -- Options: "horizontal", "vertical", "tab", "float"
    float_opts = {
      border = "curved", -- Border style for floating terminal
      winblend = 3,
    },
  },
}
