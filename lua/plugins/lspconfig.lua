return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
  },
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")

    -- General on_attach function for shared keymaps and settings
    local on_attach = function(client, bufnr)
      local opts = { noremap = true, silent = true }
      vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
      vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
      vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
      vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
      vim.lsp.inlay_hint.enable(false)
      -- Disable formatting if `conform.nvim` is handling it
      if client.name == "ts_ls" or client.name == "eslint" then
        client.server_capabilities.documentFormattingProvider = false
      end
    end
    -- Configure Mason-LSPconfig
    mason_lspconfig.setup({
      ensure_installed = {
        "ts_ls",
        "html",
        "lua_ls",
      },
    })

    -- Setup individual servers
    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({ on_attach = on_attach })
      end,
    })
  end,
}
