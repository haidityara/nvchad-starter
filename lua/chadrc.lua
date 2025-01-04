-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
})

M.base46 = {
  theme = "monekai",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.ui = {
  statusline = {
    theme = "minimal", -- Options: "default", "minimal"
    separator_style = "round", -- Options: "default", "round", "block"
    overriden_modules = nil, -- Allows you to override individual modules of the statusline
  },
}

-- Add plugin-specific mappings
M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd>GoTagAdd json<CR>",
      "Add JSON struct tags",
    },
    ["<leader>gsy"] = {
      "<cmd>GoTagAdd yaml<CR>",
      "Add YAML struct tags",
    },
  },
}

return M
