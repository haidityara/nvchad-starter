local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = {"gopls", "gofumt", "goimports_reviser", "golines"},
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  formatters = {
      -- Golang
        ["goimports-reviser"] = {
            prepend_args = { "-rm-unused" },
        },
        golines = {
            prepend_args = { "--max-len=80" },
        },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
return options
