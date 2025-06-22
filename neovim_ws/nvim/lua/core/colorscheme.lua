require("catppuccin").setup({
  flavour = "mocha",
  integrations = {
    treesitter = true,
    telescope = true,
    cmp = true,
    gitsigns = true,
    nvimtree = true,
  },
})
vim.cmd.colorscheme "catppuccin"

-- lualine のテーマ指定（個別に）
require("lualine").setup({
  options = {
    theme = "catppuccin",
  }
})