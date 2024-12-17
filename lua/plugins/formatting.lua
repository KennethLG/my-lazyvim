return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = function(_, opts)
    opts.formatters_by_ft = vim.tbl_extend("force", opts.formatters_by_ft or {}, {
      javascript = { "prettier" },
      typescript = { "prettier" },
      json = { "prettier" },
      html = { "prettier" },
      lua = { "stylua" },
      python = { "black", "isort" },
    })

    opts.default_format_opts = vim.tbl_extend("force", opts.default_format_opts or {}, {
      timeout_ms = 500,
      async = false,
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      require("conform").format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
