local cb = function()
  if vim.g.colors_name == "tokyonight" then
    return "#806d9c"
  else
    return "#00ffff"
  end
end

require("hlchunk").setup {
  chunk = {
    enable = true,
    chars = {
      horizontal_line = "─",
      vertical_line = "│",
      left_top = "┌",
      left_bottom = "└",
      right_arrow = "─",
    },
    style = "#00ffff",
    -- ...
  },
  indent = {
    chars = {
      "│",
      "¦",
      "┆",
      "┊",
    },
    style = {
      vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID "Whitespace"), "fg", "gui"),
    },
  },
}
