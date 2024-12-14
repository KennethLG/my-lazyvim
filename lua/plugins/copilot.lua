return {
  "github/copilot.vim",
  config = function()
    -- Optional: Disable tab completion
    vim.g.copilot_no_tab_map = true
    -- Custom keybinding for accepting Copilot suggestions
    vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")', { noremap = true, silent = true, expr = true })
  end,
}
